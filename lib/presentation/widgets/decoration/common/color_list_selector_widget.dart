import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/editor_theme_mode.dart';

class ColorListSelectorWidget extends HookWidget {
  const ColorListSelectorWidget({
    super.key,
    required this.selectedColor,
    required this.onChangeColor,
  });

  // static constでクラスレベルに定義（毎ビルド時の再生成を回避）
  static const List<Color> _colors = [
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

  static const List<Color> _accentColors = [
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

  final Color selectedColor;
  final void Function(Color color) onChangeColor;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    final colorTabController = useTabController(
      initialLength: _colors.length,
      initialIndex: _colors.indexOf(selectedColor),
    );
    final accentColorTabController =
        useTabController(initialLength: _accentColors.length);

    useEffect(
      () {
        // リスナー関数を変数に保持してcleanup時に削除できるようにする
        void colorListener() {
          onChangeColor(_colors[colorTabController.index]);
        }

        void accentColorListener() {
          onChangeColor(_accentColors[accentColorTabController.index]);
        }

        colorTabController.addListener(colorListener);
        accentColorTabController.addListener(accentColorListener);

        // cleanup: ウィジェット破棄時にリスナーを削除
        return () {
          colorTabController.removeListener(colorListener);
          accentColorTabController.removeListener(accentColorListener);
        };
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
                  tabs: _colors
                      .map(
                        (Color color) => ColorCircle(
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
                  tabs: _accentColors
                      .map(
                        (Color color) => ColorCircle(
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
