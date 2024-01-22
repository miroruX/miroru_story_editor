import 'package:flutter/material.dart';

class ColorPickerIcon extends StatelessWidget {
  const ColorPickerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: CustomPaint(
            painter: RainbowCircleGradientPainter(),
            size: const Size(23, 23),
          ),
        ),
      ),
    );
  }
}

class RainbowCircleGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final paint = Paint()
      ..shader = const SweepGradient(
        colors: [
          Colors.red,
          Colors.orange,
          Colors.yellow,
          Colors.green,
          Colors.blue,
          Colors.indigo,
          Colors.purple,
          Colors.red,
        ],
        stops: [
          0.0, // 赤
          0.17, // オレンジ
          0.33, // 黄色
          0.47, // 緑（狭める）
          0.6, // 青（狭める）
          0.73, // 藍色（狭める）
          0.85, // 紫（狭める）
          1.0, // 赤
        ],
      ).createShader(rect);

    // ここで円形または必要な形状を描画
    canvas.drawCircle(size.center(Offset.zero), size.width / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
