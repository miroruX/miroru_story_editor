import 'package:flutter/material.dart';

ThemeMode getThemeFromColor(Color color) {
  final luminance = color.computeLuminance();
  return luminance > 0.5 ? ThemeMode.light : ThemeMode.dark;
}
