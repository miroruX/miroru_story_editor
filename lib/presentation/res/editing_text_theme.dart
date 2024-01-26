import 'package:flutter/material.dart';
import 'package:miroru_story_editor/presentation/res/theme.dart';

ThemeData miroruEditorEditingThemeLight() {
  return getMiroruThemeLight().copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
        ),
      ),
    ),
  );
}

ThemeData miroruEditorEditingThemeDark() {
  return getMiroruThemeDark().copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        highlightColor: Colors.red,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
        ),
      ),
    ),
  );
}
