import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

ThemeMode getThemeFromImage(File imageFile) {
  final fileData = imageFile.readAsBytesSync();
  final image = img.decodeImage(fileData);

  if (image == null) {
    return ThemeMode.dark;
  }

  // 画像を縮小
  final resizedImage = img.copyResize(
    image,
    width: image.width ~/ 2,
    height: image.height ~/ 2,
  );

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
