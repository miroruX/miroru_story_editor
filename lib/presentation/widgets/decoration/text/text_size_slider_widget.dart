import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';

class TextSizeSliderWidget extends HookWidget {
  const TextSizeSliderWidget({
    super.key,
    required this.onChangeFontSize,
    required this.fontSize,
  });

  final double fontSize;
  final void Function(double fontSize) onChangeFontSize;

  @override
  Widget build(BuildContext context) {
    final sliderValue = useState<double>(fontSize);

    // debounceで高頻度のonChange呼び出しを抑制（パフォーマンス向上）
    final debounce = useDebounce<double>(
      debounceDelay: 50,
      callback: onChangeFontSize,
    );

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
            max: 60,
            min: 14,
            value: sliderValue.value,
            onChanged: (value) {
              sliderValue.value = value;
              debounce.onChanged(value);
            },
            // スライダー操作終了時に確実に最終値を反映
            onChangeEnd: onChangeFontSize,
          ),
        ),
      ),
    );
  }
}
