import 'package:flutter/material.dart';

Matrix4 calculateCenterMatrix(Size screenSize, Size imageSize) {
  final xOffset = (screenSize.width - imageSize.width) / 2;
  final yOffset = (screenSize.height - imageSize.height) / 2;
  return Matrix4.translationValues(xOffset, yOffset, 0);
}
