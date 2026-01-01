import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

/// 完成した線専用のPainter（キャッシュ済みPathを使用）
class CompletedStrokePainter extends CustomPainter {
  CompletedStrokePainter({
    required this.lines,
    required this.cachedPaths,
  });

  final List<PaintLine> lines;
  final List<ui.Path> cachedPaths;

  // 静的Paintオブジェクト（インスタンス間で共有）
  static final Paint _penPaint = Paint()..style = PaintingStyle.fill;
  static final Paint _markerPaint = Paint()
    ..strokeWidth = 3
    ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 2)
    ..strokeCap = StrokeCap.square
    ..filterQuality = FilterQuality.low
    ..style = PaintingStyle.fill;
  static final Paint _neonPaint = Paint()
    ..strokeWidth = 3
    ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 3)
    ..strokeJoin = StrokeJoin.round
    ..strokeCap = StrokeCap.round
    ..strokeMiterLimit = 5
    ..filterQuality = FilterQuality.low
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      final path = cachedPaths[i];

      final paint = switch (line.brushType) {
        BrushType.pen => _penPaint..color = line.color,
        BrushType.marker =>
          _markerPaint..color = line.color.withValues(alpha: 0.7),
        BrushType.neon => _neonPaint..color = line.color,
      };

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CompletedStrokePainter oldDelegate) {
    // 完成した線は変わらないので、参照が同じなら再描画不要
    return !identical(oldDelegate.lines, lines) ||
        !identical(oldDelegate.cachedPaths, cachedPaths);
  }
}

/// 描画中の線専用のPainter（リアルタイム描画最適化）
class ActiveStrokePainter extends CustomPainter {
  ActiveStrokePainter({
    required this.line,
  });

  final PaintLine? line;

  static final Paint _penPaint = Paint()..style = PaintingStyle.fill;
  static final Paint _markerPaint = Paint()
    ..strokeWidth = 3
    ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 2)
    ..strokeCap = StrokeCap.square
    ..filterQuality = FilterQuality.low
    ..style = PaintingStyle.fill;
  static final Paint _neonPaint = Paint()
    ..strokeWidth = 3
    ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 3)
    ..strokeJoin = StrokeJoin.round
    ..strokeCap = StrokeCap.round
    ..strokeMiterLimit = 5
    ..filterQuality = FilterQuality.low
    ..style = PaintingStyle.stroke;

  // Pathを再利用
  static final Path _path = Path();

  @override
  void paint(Canvas canvas, Size size) {
    final currentLine = line;
    if (currentLine == null || currentLine.points.isEmpty) {
      return;
    }

    final stroke = _computeStroke(currentLine);
    if (stroke.isEmpty) {
      return;
    }

    final paint = switch (currentLine.brushType) {
      BrushType.pen => _penPaint..color = currentLine.color,
      BrushType.marker =>
        _markerPaint..color = currentLine.color.withValues(alpha: 0.7),
      BrushType.neon => _neonPaint..color = currentLine.color,
    };

    if (stroke.length < 2) {
      canvas.drawCircle(
        stroke.first,
        currentLine.strokeOptions.size / 2,
        paint,
      );
    } else {
      _path
        ..reset()
        ..moveTo(stroke.first.dx, stroke.first.dy);

      // 描画中は最新ポイントのみ追加処理（増分描画）
      for (var i = 0; i < stroke.length - 1; ++i) {
        final p0 = stroke[i];
        final p1 = stroke[i + 1];
        _path.quadraticBezierTo(
          p0.dx,
          p0.dy,
          (p0.dx + p1.dx) / 2,
          (p0.dy + p1.dy) / 2,
        );
      }
      canvas.drawPath(_path, paint);
    }
  }

  List<Offset> _computeStroke(PaintLine line) {
    final options = switch (line.brushType) {
      BrushType.pen => line.strokeOptions.copyWith(
        thinning: 0.5,
        smoothing: 0.5,
        streamline: 0.5,
      ),
      BrushType.marker => line.strokeOptions.copyWith(
        thinning: 0,
        smoothing: 0,
        streamline: 1,
        simulatePressure: false,
      ),
      BrushType.neon => line.strokeOptions.copyWith(
        thinning: -0.10,
        smoothing: 1,
        streamline: 1,
      ),
    };
    return getStroke(line.points, options: options);
  }

  @override
  bool shouldRepaint(covariant ActiveStrokePainter oldDelegate) {
    final oldLine = oldDelegate.line;
    final newLine = line;

    if (oldLine == null && newLine == null) {
      return false;
    }
    if (oldLine == null || newLine == null) {
      return true;
    }

    // ポイント数の変化のみ検知（描画中の高速更新用）
    return oldLine.points.length != newLine.points.length;
  }
}

/// ストロークをPathに変換するユーティリティ
ui.Path computePathFromLine(PaintLine line) {
  final options = switch (line.brushType) {
    BrushType.pen => line.strokeOptions.copyWith(
      thinning: 0.5,
      smoothing: 0.5,
      streamline: 0.5,
    ),
    BrushType.marker => line.strokeOptions.copyWith(
      thinning: 0,
      smoothing: 0,
      streamline: 1,
      simulatePressure: false,
    ),
    BrushType.neon => line.strokeOptions.copyWith(
      thinning: -0.10,
      smoothing: 1,
      streamline: 1,
    ),
  };
  final stroke = getStroke(line.points, options: options);

  final path = ui.Path();
  if (stroke.isEmpty) {
    return path;
  }

  if (stroke.length < 2) {
    // 単一点は円として描画（後でdrawCircleで処理するが、Pathとして返す）
    path.addOval(
      Rect.fromCircle(
        center: stroke.first,
        radius: line.strokeOptions.size / 2,
      ),
    );
  } else {
    path.moveTo(stroke.first.dx, stroke.first.dy);
    for (var i = 0; i < stroke.length - 1; ++i) {
      final p0 = stroke[i];
      final p1 = stroke[i + 1];
      path.quadraticBezierTo(
        p0.dx,
        p0.dy,
        (p0.dx + p1.dx) / 2,
        (p0.dy + p1.dy) / 2,
      );
    }
  }
  return path;
}
