import 'dart:typed_data';

import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'save_image.g.dart';

@riverpod
Future<void> saveImage(
  Ref ref, {
  required Uint8List imageBytes,
}) async {
  try {
    await ImageGallerySaverPlus.saveImage(imageBytes);
  } on Exception catch (_) {
    throw Exception('画像の保存に失敗しました');
  }
}
