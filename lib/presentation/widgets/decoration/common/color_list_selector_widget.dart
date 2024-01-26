import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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

    final colorTabController = useTabController(initialLength: colors.length);
    final accentColorTabController =
        useTabController(initialLength: accentColors.length);

    useEffect(
      () {
        colorTabController.addListener(() {
          onChangeColor(colors[colorTabController.index]);
        });
        accentColorTabController.addListener(() {
          onChangeColor(accentColors[accentColorTabController.index]);
        });
        return null;
      },
      [],
    );

    return SizedBox(
      height: 40,
      width: context.deviceWidth,
      child: Align(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: PageView(
            controller: pageController,
            children: [
              SizedBox(
                width: context.deviceWidth,
                child: TabBar(
                  controller: colorTabController,
                  tabs: colors
                      .map(
                        (color) => ColorCircle(
                          color: color,
                          isSelected: color == selectedColor,
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                width: context.deviceWidth,
                child: TabBar(
                  controller: accentColorTabController,
                  tabs: accentColors
                      .map(
                        (color) => ColorCircle(
                          color: color,
                          isSelected: color == selectedColor,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
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
        radius: 10,
      ),
    );
  }
}
