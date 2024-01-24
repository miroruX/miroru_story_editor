import 'package:flutter/material.dart';

bool isPointerNearDeleteArea({
  required Offset pointerOffset,
  required Offset deleteAreaOffset,
  required double threshold,
}) {
  // 2つのオフセット間の距離を計算
  final distance = (pointerOffset - deleteAreaOffset).distance;
  // 距離が閾値以下であれば true を返す
  return distance <= threshold;
}
