import 'package:flutter/material.dart';
import 'package:miroru_story_editor/extensions/color_extension.dart';
import 'package:miroru_story_editor/extensions/string_extension.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/enums/font_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editing_text_item_state.g.dart';

@Riverpod(keepAlive: true)
class EditingTextItemState extends _$EditingTextItemState {
  @override
  RenderItem<DecorationText> build() {
    return RenderItem<DecorationText>(
      transform: Matrix4.identity(),
      data: DecorationText(
        fontFamily: FontType.notoSansJp.name,
        backgroundColorCode: Colors.black.hex,
        fontSize: 34,
        colorCode: Colors.white.hex,
        textAlign: TextAlign.left.name,
      ),
      uuid: null,
      order: 0,
    );
  }

  DecorationText get _decorationText => state.data;

  void setItem(RenderItem<DecorationText> renderItem) {
    state = renderItem;
  }

  // 共通のstate更新ヘルパー（copyWithを活用して冗長なコードを削減）
  void _updateData(DecorationText Function(DecorationText current) updater) {
    state = state.copyWith(data: updater(_decorationText));
  }

  void changeTextAlign() {
    final newAlignment =
        _decorationText.textAlign == TextAlign.left.name
            ? TextAlign.right
            : TextAlign.left;
    _updateData((data) => data.copyWith(textAlign: newAlignment.name));
  }

  void changeFillColor() {
    final newBackgroundColor =
        _decorationText.backgroundColorCode.toColor == Colors.black
            ? Colors.white
            : Colors.black;
    _updateData(
      (data) => data.copyWith(backgroundColorCode: newBackgroundColor.hex),
    );
  }

  void changeFontSize(double fontSize) {
    _updateData((data) => data.copyWith(fontSize: fontSize));
  }

  void changeText(String text) {
    _updateData((data) => data.copyWith(text: text));
  }

  void changeTextColor(Color color) {
    _updateData((data) => data.copyWith(colorCode: color.hex));
  }

  void changeFontFamily(String fontFamily) {
    _updateData((data) => data.copyWith(fontFamily: fontFamily));
  }

  void reset() {
    state = build();
  }
}
