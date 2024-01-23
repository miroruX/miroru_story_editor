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

  Color get toColor {
    // ここに文字列からColorオブジェクトを生成するロジックを実装
    // 以下は単純な例です
    if (this == null) {
      return Colors.transparent;
    }
    return Color(int.parse(this!, radix: 16)).withOpacity(1);
  }
}
