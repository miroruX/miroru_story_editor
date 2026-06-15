import 'dart:io';

import 'package:blurhash_dart/blurhash_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;

/// Isolateで実行するBlurHash計算処理
BlurHash _computeBlurHash(String filePath) {
  final fileData = File(filePath).readAsBytesSync();
  final image = img.decodeImage(fileData);
  if (image == null) {
    throw Exception('image is null');
  }

  final resizedImage = img.copyResize(image, width: 50);
  return BlurHash.encode(resizedImage);
}

/// computeを使ってIsolateで実行し、メインスレッドをブロックしない
Future<BlurHash> fetchBlurHash(File file) {
  return compute(_computeBlurHash, file.path);
}
