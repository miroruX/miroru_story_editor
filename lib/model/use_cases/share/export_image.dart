import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'export_image.g.dart';

@riverpod
FutureOr<Uint8List?> exportImage(Ref ref) async {
  final paletteKey = ref.read(paletteKeyProvider);

  final boundary =
      paletteKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
  if (boundary == null) {
    return null;
  }

  // デバイスのピクセル密度を取得して高解像度で画像を生成
  final context = paletteKey.currentContext;
  final pixelRatio = context != null
      ? MediaQuery.of(context).devicePixelRatio
      : 2.0; // フォールバック値として2.0を使用

  final image = await boundary.toImage(pixelRatio: pixelRatio);
  final byteData = await image.toByteData(format: ImageByteFormat.png);
  return byteData?.buffer.asUint8List();
}
