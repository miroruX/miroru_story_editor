import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/decorations/emoji/decoration_emoji.dart';
import 'package:miroru_story_editor/model/entities/decorations/text/decoration_text.dart';

part 'render_item.freezed.dart';

@freezed
class RenderItem<T extends DecorationItem> with _$RenderItem {
  const factory RenderItem({
    required String uuid,
    required Matrix4 transform,
    required T data,
    required int order,
    @Default(false) bool deletePosition,
  }) = _RenderItem;
  const RenderItem._();

  bool get isText => data is DecorationText;
  bool get isBackgroundImage => data is DecorationBackgroundImage;
  bool get isEmoji => data is DecorationEmoji;
}
