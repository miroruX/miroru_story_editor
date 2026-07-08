import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

/// Isolateで実行する輝度計算処理。
///
/// 平均輝度の判定にはフル解像度は不要なため、64pxまで縮小してから
/// ピクセルを走査する。
ThemeMode _computeThemeFromImage(String filePath) {
  final fileData = File(filePath).readAsBytesSync();
  final image = img.decodeImage(fileData);

  if (image == null) {
    return ThemeMode.dark;
  }

  // 画像を縮小
  final resizedImage = img.copyResize(image, width: 64);

  var totalLuminance = 0.0;

  // 各ピクセルの輝度を計算
  for (var y = 0; y < resizedImage.height; y++) {
    for (var x = 0; x < resizedImage.width; x++) {
      final pixelColor = resizedImage.getPixel(x, y);
      totalLuminance += img.getLuminance(pixelColor) / 255;
    }
  }

  // 平均輝度を計算
  final averageLuminance =
      totalLuminance / (resizedImage.width * resizedImage.height);

  // テーマモードを決定
  return averageLuminance > 0.5 ? ThemeMode.light : ThemeMode.dark;
}

/// 背景画像の平均輝度からテーマモードを判定する。
///
/// デコードとピクセル走査はUIスレッドをブロックしないよう
/// [compute] でIsolate上で実行する。
Future<ThemeMode> getThemeFromImage(File imageFile) {
  return compute(_computeThemeFromImage, imageFile.path);
}
