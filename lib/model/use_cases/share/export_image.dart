import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'export_image.g.dart';

@riverpod
FutureOr<Uint8List?> exportImage(ExportImageRef ref) async {
  final paletteKey = ref.read(paletteKeyProvider);

  final boundary =
      paletteKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
  if (boundary == null) {
    return null;
  }
  final image = await boundary.toImage();
  final byteData = await image.toByteData(format: ImageByteFormat.png);
  return byteData?.buffer.asUint8List();
}
