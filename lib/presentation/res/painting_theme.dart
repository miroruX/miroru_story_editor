import 'package:flutter/material.dart';
import 'package:miroru_story_editor/presentation/res/decorating_theme.dart';

ThemeData getPaintingThemeLight() {
  return getDecoratingThemeLight().copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.grey,
      ),
    ),
  );
}

ThemeData getPaintingThemeDark() {
  return getDecoratingThemeDark().copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.grey,
      ),
    ),
  );
}
