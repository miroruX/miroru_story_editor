import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FontType {
  // 日本語対応フォント（変化が分かりやすいもの）
  notoSansJp._('notoSansJp'),           // ゴシック体（標準）
  notoSerifJp._('notoSerifJp'),         // 明朝体
  zenMaruGothic._('zenMaruGothic'),     // 丸ゴシック
  zenKakuGothicNew._('zenKakuGothicNew'), // 角ゴシック
  mPlusRounded1c._('mPlusRounded1c'),   // 丸みのあるゴシック
  sawarabiMincho._('sawarabiMincho');   // さわらび明朝

  const FontType._(this.value);
  final String value;

  static FontType fromString(String value) {
    return FontType.values.firstWhere((e) => e.value == value);
  }

  TextStyle get fontStyle {
    switch (this) {
      case FontType.notoSansJp:
        return GoogleFonts.notoSansJp(fontWeight: FontWeight.bold);
      case FontType.notoSerifJp:
        return GoogleFonts.notoSerifJp(fontWeight: FontWeight.bold);
      case FontType.zenMaruGothic:
        return GoogleFonts.zenMaruGothic(fontWeight: FontWeight.bold);
      case FontType.zenKakuGothicNew:
        return GoogleFonts.zenKakuGothicNew(fontWeight: FontWeight.bold);
      case FontType.mPlusRounded1c:
        return GoogleFonts.mPlusRounded1c(fontWeight: FontWeight.bold);
      case FontType.sawarabiMincho:
        return GoogleFonts.sawarabiMincho();
    }
  }
}
