import 'package:flutter/material.dart';
import 'package:miroru_story_editor/presentation/res/decorating_theme.dart';
import 'package:miroru_story_editor/presentation/res/footer_theme.dart';
import 'package:miroru_story_editor/presentation/res/painting_theme.dart';
import 'package:miroru_story_editor/presentation/res/theme.dart';

class ThemeDataDto {
  ThemeDataDto({
    ThemeData? themeLight,
    ThemeData? themeDark,
    ThemeData? paintingThemeLight,
    ThemeData? paintingThemeDark,
    ThemeData? decoratingThemeLight,
    ThemeData? decoratingThemeDark,
    ThemeData? footerThemeLight,
    ThemeData? footerThemeDark,
  })  : themeLight = themeLight ?? getMiroruThemeLight(),
        themeDark = themeDark ?? getMiroruThemeDark(),
        paintThemeLight = paintingThemeLight ?? getPaintingThemeLight(),
        paintThemeDark = paintingThemeDark ?? getPaintingThemeDark(),
        paletteThemeLight = decoratingThemeLight ?? getDecoratingThemeLight(),
        paletteThemeDark = decoratingThemeDark ?? getDecoratingThemeDark(),
        footerThemeLight = footerThemeLight ?? getFooterThemeLight(),
        footerThemeDark = footerThemeDark ?? getFooterThemeDark();

  final ThemeData themeLight;
  final ThemeData themeDark;
  final ThemeData paintThemeLight;
  final ThemeData paintThemeDark;
  final ThemeData paletteThemeLight;
  final ThemeData paletteThemeDark;
  final ThemeData footerThemeLight;
  final ThemeData footerThemeDark;
}
