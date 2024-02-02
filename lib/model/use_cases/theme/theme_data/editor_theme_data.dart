import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/editor_theme_mode.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/theme_data_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editor_theme_data.g.dart';

@Riverpod(keepAlive: true)
class EditorThemeData extends _$EditorThemeData {
  @override
  ThemeData build() {
    final themeMode = ref.watch(editorThemeModeProvider);
    final themeDataDto = ref.watch(themeDataDtoProvider);
    if (themeMode == ThemeMode.dark) {
      return themeDataDto.themeDark;
    } else {
      return themeDataDto.themeLight;
    }
  }

  void setCustomTheme(ThemeData themeData) {
    state = themeData;
  }
}
