import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editor_theme_mode.dart';

class ColorPickerIcon extends ConsumerWidget {
  const ColorPickerIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(editorThemeModeProvider);
    return ClipOval(
      child: ColoredBox(
        color: themeMode == ThemeMode.dark ? Colors.white : Colors.black,
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
          0.0,
          0.17,
          0.33,
          0.47,
          0.6,
          0.73,
          0.85,
          1.0,
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
