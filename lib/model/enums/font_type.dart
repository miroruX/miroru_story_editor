import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FontType {
  // 日本語対応フォント（変化が分かりやすいもの）
  notoSansJp._('notoSansJp'), // ゴシック体（標準）
  notoSerifJp._('notoSerifJp'), // 明朝体
  zenMaruGothic._('zenMaruGothic'), // 丸ゴシック
  zenKakuGothicNew._('zenKakuGothicNew'), // 角ゴシック
  mPlusRounded1c._('mPlusRounded1c'), // 丸みのあるゴシック
  sawarabiMincho._('sawarabiMincho'); // さわらび明朝

  const FontType._(this.value);
  final String value;

  static FontType fromString(String value) {
    return FontType.values.firstWhere((e) => e.value == value);
  }

  TextStyle get fontStyle => switch (this) {
    FontType.notoSansJp => GoogleFonts.notoSansJp(fontWeight: FontWeight.bold),
    FontType.notoSerifJp => GoogleFonts.notoSerifJp(
      fontWeight: FontWeight.bold,
    ),
    FontType.zenMaruGothic => GoogleFonts.zenMaruGothic(
      fontWeight: FontWeight.bold,
    ),
    FontType.zenKakuGothicNew => GoogleFonts.zenKakuGothicNew(
      fontWeight: FontWeight.bold,
    ),
    FontType.mPlusRounded1c => GoogleFonts.mPlusRounded1c(
      fontWeight: FontWeight.bold,
    ),
    FontType.sawarabiMincho => GoogleFonts.sawarabiMincho(),
  };
}
