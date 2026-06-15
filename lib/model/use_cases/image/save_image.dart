import 'dart:typed_data';

import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';

Future<void> saveImage(Uint8List imageBytes) async {
  try {
    await ImageGallerySaverPlus.saveImage(imageBytes);
  } on Exception catch (_) {
    throw Exception('画像の保存に失敗しました');
  }
}
