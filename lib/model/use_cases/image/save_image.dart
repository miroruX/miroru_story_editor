import 'dart:typed_data';

import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'save_image.g.dart';

@riverpod
FutureOr<void> saveImage(
  SaveImageRef ref, {
  required Uint8List imageBytes,
}) async {
  try {
    await ImageGallerySaver.saveImage(imageBytes);
  } on Exception catch (_) {
    throw Exception('画像の保存に失敗しました');
  }
}
