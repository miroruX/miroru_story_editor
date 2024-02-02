import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/editor_theme_mode.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/theme_data_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'footer_theme_data.g.dart';

@Riverpod(keepAlive: true)
class FooterThemeData extends _$FooterThemeData {
  @override
  ThemeData build() {
    final themeMode = ref.watch(editorThemeModeProvider);
    final themeDataDto = ref.watch(themeDataDtoProvider);
    if (themeMode == ThemeMode.dark) {
      return themeDataDto.footerThemeDark;
    } else {
      return themeDataDto.footerThemeLight;
    }
  }
}
