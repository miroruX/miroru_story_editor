import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editor_theme_mode.dart';
import 'package:miroru_story_editor/presentation/res/color_schemes.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editor_color_scheme.g.dart';

@Riverpod(keepAlive: true)
class EditorColorScheme extends _$EditorColorScheme {
  @override
  ColorScheme build() {
    final themeMode = ref.watch(editorThemeModeProvider);
    if (themeMode == ThemeMode.dark) {
      return darkColorScheme;
    } else {
      return lightColorScheme;
    }
  }
}
