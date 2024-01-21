import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

Future<Size> getImageSize(File imageFile) async {
  final decodedImage = await decodeImageFromList(imageFile.readAsBytesSync());
  return Size(decodedImage.width.toDouble(), decodedImage.height.toDouble());
}
