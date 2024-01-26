import 'package:flutter/material.dart';
import 'package:miroru_story_editor/presentation/res/editing_decoration_theme.dart';

ThemeData editingPaintThemeLight() {
  return editingDecorationThemeLight().copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.grey,
      ),
    ),
  );
}

ThemeData editingPaintThemeDark() {
  return editingDecorationThemeDark().copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.grey,
      ),
    ),
  );
}
