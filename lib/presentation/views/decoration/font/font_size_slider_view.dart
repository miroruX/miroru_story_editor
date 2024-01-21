import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FontSizeSliderView extends HookWidget {
  const FontSizeSliderView({
    super.key,
    required this.onChangeFontSize,
  });

  final void Function(double fontSize) onChangeFontSize;

  @override
  Widget build(BuildContext context) {
    final sliderValue = useState<double>(50);
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 50,
        maxHeight: 200,
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
            overlayShape: const RoundSliderOverlayShape(
              overlayRadius: 20,
            ),
          ),
          child: Slider(
            max: 100,
            value: sliderValue.value,
            onChanged: (value) {
              sliderValue.value = value;
              onChangeFontSize(value);
            },
          ),
        ),
      ),
    );
  }
}
