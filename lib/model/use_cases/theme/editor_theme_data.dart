import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editor_theme_mode.dart';
import 'package:miroru_story_editor/presentation/res/theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editor_theme_data.g.dart';

@Riverpod(keepAlive: true)
class EditorThemeData extends _$EditorThemeData {
  @override
  ThemeData build() {
    final themeMode = ref.watch(editorThemeModeProvider);
    if (themeMode == ThemeMode.dark) {
      return getMiroruThemeDark();
    } else {
      return getMiroruThemeLight();
    }
  }

  void setCustomTheme(ThemeData themeData) {
    state = themeData;
  }
}
