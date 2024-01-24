import 'package:flutter/material.dart';

bool isMovingCenter({
  /// 移動中のアイテムの座標
  required Matrix4 transform,

  /// 座標軸
  required Axis axis,

  /// 中心線を表示するかどうかの閾値
  required double threshold,
}) {
  final translation = transform.getTranslation();
  final itemOffset = Offset(translation.x, translation.y);

  switch (axis) {
    case Axis.horizontal:
      return itemOffset.dx.abs() < threshold;
    case Axis.vertical:
      return itemOffset.dy.abs() < threshold;
  }
}
