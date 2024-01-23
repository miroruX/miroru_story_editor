import 'package:flutter/material.dart';

extension ColorExtension on Color? {
  // 明度を上げる
  Color brighten([double amount = 0.1]) {
    if (this == null) {
      return Colors.transparent;
    }
    final hsl = HSLColor.fromColor(this!);
    final lightness = (hsl.lightness + amount).clamp(0.0, 1.0);
    return hsl.withLightness(lightness).toColor();
  }

  // 明度を下げる
  Color darken([double amount = 0.1]) {
    if (this == null) {
      return Colors.transparent;
    }
    final hsl = HSLColor.fromColor(this!);
    final lightness = (hsl.lightness - amount).clamp(0.0, 1.0);
    return hsl.withLightness(lightness).toColor();
  }

  // カラーコードを16進数の文字列で取得
  String get hex {
    if (this == null) {
      return '00000000';
    }
    return this!.value.toRadixString(16).padLeft(8, '0');
  }
}
