import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editor_theme_mode.dart';
import 'package:miroru_story_editor/presentation/res/editing_paint_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editing_paint_theme_dart.g.dart';

@Riverpod(keepAlive: true)
class EditingPaintTheme extends _$EditingPaintTheme {
  @override
  ThemeData build() {
    final themeMode = ref.watch(editorThemeModeProvider);
    if (themeMode == ThemeMode.dark) {
      return editingPaintThemeDark();
    } else {
      return editingPaintThemeLight();
    }
  }
}
