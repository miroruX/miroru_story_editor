import 'package:flutter/material.dart';

class CenterLineXWidget extends StatelessWidget {
  const CenterLineXWidget({
    super.key,
    required this.height,
    this.strokeWidth = 2,
  });
  final double height;
  final double strokeWidth;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(strokeWidth, height),
      painter: _CenterLinePainter(
        strokeWidth: strokeWidth,
      ),
    );
  }
}

class _CenterLinePainter extends CustomPainter {
  const _CenterLinePainter({
    required this.strokeWidth,
  });
  final double strokeWidth;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blueAccent.withOpacity(0.5)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final path = Path()
      ..moveTo(size.width / 2, size.height)
      ..lineTo(size.width / 2, 0)
      ..close();

    canvas.drawPath(path, paint); // パスを描画
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
