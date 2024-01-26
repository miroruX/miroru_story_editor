import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editor_theme_mode.dart';
import 'package:miroru_story_editor/presentation/res/editing_text_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editor_editing_theme_data.g.dart';

@Riverpod(keepAlive: true)
class EditorEditingThemeData extends _$EditorEditingThemeData {
  @override
  ThemeData build() {
    final themeMode = ref.watch(editorThemeModeProvider);
    if (themeMode == ThemeMode.dark) {
      return miroruEditorEditingThemeDark();
    } else {
      return miroruEditorEditingThemeLight();
    }
  }
}
