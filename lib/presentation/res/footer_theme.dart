import 'package:flutter/material.dart';
import 'package:miroru_story_editor/presentation/res/theme.dart';

ThemeData getFooterThemeLight() {
  return getMiroruThemeLight().copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        foregroundColor: Colors.black,
      ),
    ),
  );
}

ThemeData getFooterThemeDark() {
  return getMiroruThemeDark().copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        foregroundColor: Colors.black,
      ),
    ),
  );
}
