import 'package:flutter/material.dart';

class ConeWidget extends StatelessWidget {
  const ConeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(30, 200),
      painter: _ConePainter(),
    );
  }
}

class _ConePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // 円錐形のパスを定義
    final path = Path()
      ..moveTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(path, paint); // パスを描画
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
