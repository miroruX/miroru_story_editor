import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/extensions/color_extension.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editor_theme_mode.dart';

class ColorListSelectorWidget extends HookWidget {
  const ColorListSelectorWidget({
    super.key,
    required this.selectedColor,
    required this.onChangeColor,
  });

  final Color selectedColor;
  final void Function(Color color) onChangeColor;

  @override
  Widget build(BuildContext context) {
    const colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
      Colors.white,
      Colors.black,
    ];

    const accentColors = [
      Colors.redAccent,
      Colors.orangeAccent,
      Colors.yellowAccent,
      Colors.greenAccent,
      Colors.blueAccent,
      Colors.indigoAccent,
      Colors.purpleAccent,
      Colors.white,
      Colors.black,
    ];

    final pageController = usePageController();

    return SizedBox(
      height: 40,
      width: context.deviceWidth,
      child: Align(
        child: PageView(
          controller: pageController,
          children: [
            SizedBox(
              width: context.deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: colors
                    .map(
                      (color) => GestureDetector(
                        onTap: () => onChangeColor(color),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: ColorCircle(
                            color: color,
                            isSelected: selectedColor.hex == color.hex,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              width: context.deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: accentColors
                    .map(
                      (color) => GestureDetector(
                        onTap: () => onChangeColor(color),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: ColorCircle(
                            color: color,
                            isSelected: selectedColor.hex == color.hex,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorCircle extends ConsumerWidget {
  const ColorCircle({
    super.key,
    required this.color,
    this.isSelected = false,
  });
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(editorThemeModeProvider);
    return CircleAvatar(
      backgroundColor: themeMode == ThemeMode.dark ? Colors.white : Colors.grey,
      radius: 12,
      child: CircleAvatar(
        backgroundColor: color,
        radius: isSelected ? 8 : 10,
      ),
    );
  }
}
