import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'palette_key.g.dart';

@Riverpod(keepAlive: true)
GlobalKey paletteKey(PaletteKeyRef ref) {
  return GlobalKey();
}
