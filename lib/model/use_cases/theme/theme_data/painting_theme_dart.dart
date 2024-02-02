import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/editor_theme_mode.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/theme_data_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'painting_theme_dart.g.dart';

@Riverpod(keepAlive: true)
class PaintingThemeData extends _$PaintingThemeData {
  @override
  ThemeData build() {
    final themeDataDto = ref.watch(themeDataDtoProvider);
    final themeMode = ref.watch(editorThemeModeProvider);
    if (themeMode == ThemeMode.dark) {
      return themeDataDto.paintThemeDark;
    } else {
      return themeDataDto.paintThemeLight;
    }
  }
}
