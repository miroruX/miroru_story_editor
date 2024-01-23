import 'dart:io';

import 'package:blurhash_dart/blurhash_dart.dart';
import 'package:image/image.dart' as img;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_blur_hash.g.dart';

@riverpod
FutureOr<BlurHash> fetchBlurHash(
  FetchBlurHashRef ref, {
  required File file,
}) {
  final fileData = file.readAsBytesSync();
  final image = img.decodeImage(fileData);
  if (image == null) {
    throw Exception('image is null');
  }
  final blurHash = BlurHash.encode(
    image,
  );

  return blurHash;
}
