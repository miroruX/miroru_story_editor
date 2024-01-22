import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FontType {
  roboto._('roboto'),
  oswald._('oswald'),
  pacifico._('pacifico'),
  dancingScript._('dancingScript'),
  poppins._('poppins'),
  notoSans._('notoSans');

  const FontType._(this.value);
  final String value;

  static FontType fromString(String value) {
    return FontType.values.firstWhere((e) => e.value == value);
  }

  TextStyle get fontStyle {
    switch (this) {
      case FontType.roboto:
        return GoogleFonts.roboto();
      case FontType.oswald:
        return GoogleFonts.oswald();
      case FontType.pacifico:
        return GoogleFonts.pacifico();
      case FontType.dancingScript:
        return GoogleFonts.dancingScript();
      case FontType.poppins:
        return GoogleFonts.poppins();
      case FontType.notoSans:
        return GoogleFonts.notoSans();
    }
  }
}
