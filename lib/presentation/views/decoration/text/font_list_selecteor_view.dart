import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/enums/font_type.dart';

class FontListSelectorWidget extends HookWidget {
  const FontListSelectorWidget({super.key, required this.onChangeFontName});

  final void Function(String fontName) onChangeFontName;

  @override
  Widget build(BuildContext context) {
    final tabController =
        useTabController(initialLength: FontType.values.length);

    useEffect(
      () {
        tabController.addListener(() {
          onChangeFontName(FontType.values[tabController.index].name);
        });
        return tabController.dispose;
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
                  'Aa',
                  style: font.fontStyle,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
