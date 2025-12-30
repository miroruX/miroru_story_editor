import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/enums/font_type.dart';

class FontListSelectorWidget extends HookWidget {
  const FontListSelectorWidget({
    super.key,
    required this.onChangeFontName,
  });

  final void Function(String fontName) onChangeFontName;

  @override
  Widget build(BuildContext context) {
    final tabController =
        useTabController(initialLength: FontType.values.length);

    useEffect(
      () {
        void listener() {
          onChangeFontName(FontType.values[tabController.index].name);
        }

        tabController.addListener(listener);
        return () {
          tabController.removeListener(listener);
        };
      },
      [],
    );

    return SizedBox(
      height: 40,
      width: context.deviceWidth,
      child: TabBar(
        isScrollable: true,
        controller: tabController,
        tabs: FontType.values
            .map(
              (font) => Tab(
                child: Text(
                  'あア',
                  style: font.fontStyle,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
