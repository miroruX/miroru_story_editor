import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/enums/font_type.dart';

extension StringExtension on String? {
  TextStyle get fontStyle {
    try {
      return FontType.values.firstWhere((font) => font.name == this).fontStyle;
    } on Exception catch (_) {
      return FontType.roboto.fontStyle;
    }
  }
}
