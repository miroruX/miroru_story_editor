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
    final path = Path();

    // それぞれのブラシタイプに応じて描画する
    List<Offset> drawPen(PaintLine line) {
      paint = Paint()..color = line.color;
      return getStroke(line.points, options: line.strokeOptions);
    }

    List<Offset> drawMarker(PaintLine line) {
      paint = Paint()
        ..strokeWidth = 5
        ..color = line.color
        ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 5)
        ..strokeCap = StrokeCap.square
        ..filterQuality = FilterQuality.high
        ..style = PaintingStyle.fill;
      return getStroke(line.points, options: line.strokeOptions);
    }

    List<Offset> drawNeon(PaintLine line) {
      paint = Paint()
        ..strokeWidth = 5
        ..color = line.color
        ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 5)
        ..strokeJoin = StrokeJoin.round
        ..strokeCap = StrokeCap.round
        ..strokeMiterLimit = 5
        ..filterQuality = FilterQuality.high
        ..style = PaintingStyle.stroke;
      return getStroke(line.points, options: line.strokeOptions);
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
        // If the path only has one point, draw a dot.
        canvas.drawCircle(
          stroke.first,
          line.strokeOptions!.size / 2,
          paint,
        );
      } else {
        final newPath = path..moveTo(stroke.first.dx, stroke.first.dy);
        for (var i = 0; i < stroke.length - 1; ++i) {
          final p0 = stroke[i];
          final p1 = stroke[i + 1];
          newPath.quadraticBezierTo(
            p0.dx,
            p0.dy,
            (p0.dx + p1.dx) / 2,
            (p0.dy + p1.dy) / 2,
          );
        }
        canvas.drawPath(newPath, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
