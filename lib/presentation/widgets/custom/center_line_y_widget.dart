import 'package:flutter/material.dart';

class CenterLineYWidget extends StatelessWidget {
  const CenterLineYWidget({
    super.key,
    required this.width,
    this.strokeWidth = 2,
  });
  final double width;
  final double strokeWidth;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, strokeWidth),
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
      ..color = Colors.blueAccent.withValues(alpha: 0.5)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final path = Path()
      ..moveTo(0, size.height / 2) // 左端から開始
      ..lineTo(size.width, size.height / 2); // 右端まで線を引く

    canvas.drawPath(path, paint); // パスを描画
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
