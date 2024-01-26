import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editor_theme_mode.dart';
import 'package:miroru_story_editor/presentation/res/editing_decoration_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editing_decoration_theme_data.g.dart';

@Riverpod(keepAlive: true)
class EditingDecorationTheme extends _$EditingDecorationTheme {
  @override
  ThemeData build() {
    final themeMode = ref.watch(editorThemeModeProvider);
    if (themeMode == ThemeMode.dark) {
      return editingDecorationThemeDark();
    } else {
      return editingDecorationThemeLight();
    }
  }
}
