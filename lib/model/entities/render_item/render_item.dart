import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';

part 'render_item.freezed.dart';

@freezed
class RenderItem<T extends DecorationItem> with _$RenderItem {
  const factory RenderItem({
    String? uuid,
    required Matrix4 transform,
    required T data,
    required int order,
  }) = _RenderItem;
  const RenderItem._();
}
