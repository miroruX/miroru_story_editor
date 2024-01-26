import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

class StrokePainter extends CustomPainter {
  const StrokePainter({
    required this.lines,
  });

  final List<PaintLine> lines;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    // それぞれのブラシタイプに応じて描画する
    List<Offset> drawPen(PaintLine line) {
      paint = Paint()..color = line.color;
      return getStroke(
        line.points,
        options: line.strokeOptions.copyWith(
          thinning: 0.5,
          smoothing: 0.5,
          streamline: 0.5,
        ),
      );
    }

    List<Offset> drawMarker(PaintLine line) {
      paint = Paint()
        ..strokeWidth = 3
        ..color = line.color.withOpacity(0.7)
        ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 2)
        ..strokeCap = StrokeCap.square
        ..filterQuality = FilterQuality.high
        ..style = PaintingStyle.fill;
      return getStroke(
        line.points,
        options: line.strokeOptions.copyWith(
          thinning: 0,
          smoothing: 0,
          streamline: 1,
          simulatePressure: false,
        ),
      );
    }

    List<Offset> drawNeon(PaintLine line) {
      paint = Paint()
        ..strokeWidth = 3
        ..color = line.color
        ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 3)
        ..strokeJoin = StrokeJoin.round
        ..strokeCap = StrokeCap.round
        ..strokeMiterLimit = 5
        ..filterQuality = FilterQuality.high
        ..style = PaintingStyle.stroke;
      return getStroke(
        line.points,
        options: line.strokeOptions.copyWith(
          thinning: -0.10,
          smoothing: 1,
          streamline: 1,
        ),
      );
    }

    // 描画開始
    for (final line in lines) {
      final stroke = switch (line.brushType) {
        BrushType.pen => drawPen(line),
        BrushType.marker => drawMarker(line),
        BrushType.neon => drawNeon(line)
      };

      if (stroke.isEmpty) {
        continue;
      } else if (stroke.length < 2) {
        canvas.drawCircle(
          stroke.first,
          line.strokeOptions.size / 2,
          paint,
        );
      } else {
        final path = Path()..moveTo(stroke.first.dx, stroke.first.dy);
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
        canvas.drawPath(path, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
