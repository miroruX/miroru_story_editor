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
        fontFamily: FontType.roboto.name,
        backgroundColorCode: Colors.black.hex,
        fontSize: 20,
        colorCode: Colors.white.hex,
      ),
      uuid: null,
      order: 0,
    );
  }

  DecorationText get _decorationText => state.data as DecorationText;

  void setItem(RenderItem<DecorationText> renderItem) {
    state = renderItem;
  }

  void changeTextAlign() {
    if (state.data is! DecorationText) {
      throw Exception(
        'state.data is not DecorationText.',
      );
    }

    late final TextAlign newAlignment;

    if (_decorationText.textAlign == TextAlign.left.name) {
      newAlignment = TextAlign.center;
    } else if (_decorationText.textAlign == TextAlign.center.name) {
      newAlignment = TextAlign.right;
    } else if (_decorationText.textAlign == TextAlign.right.name) {
      newAlignment = TextAlign.left;
    } else {
      newAlignment = TextAlign.left;
    }

    state = RenderItem<DecorationText>(
      transform: state.transform,
      data: _decorationText.copyWith(
        textAlign: newAlignment.name,
      ),
      uuid: state.uuid,
      order: state.order,
    );
  }

  void changeFillColor() {
    if (state.data is! DecorationText) {
      throw Exception(
        'state.data is not DecorationText.',
      );
    }

    late final Color newBackgroundColor;

    if (_decorationText.backgroundColorCode.toColor == Colors.black) {
      newBackgroundColor = Colors.white;
    } else {
      newBackgroundColor = Colors.black;
    }

    state = RenderItem<DecorationText>(
      transform: state.transform,
      data: _decorationText.copyWith(
        backgroundColorCode: newBackgroundColor.hex,
      ),
      uuid: state.uuid,
      order: state.order,
    );
  }

  void changeFontSize(double fontSize) {
    if (state.data is! DecorationText) {
      throw Exception(
        'state.data is not DecorationText.',
      );
    }

    state = RenderItem<DecorationText>(
      transform: state.transform,
      data: _decorationText.copyWith(
        fontSize: fontSize,
      ),
      uuid: state.uuid,
      order: state.order,
    );
  }

  void changeText(String text) {
    if (state.data is! DecorationText) {
      throw Exception(
        'state.data is not DecorationText.',
      );
    }

    state = RenderItem<DecorationText>(
      transform: state.transform,
      data: _decorationText.copyWith(
        text: text,
      ),
      uuid: state.uuid,
      order: state.order,
    );
  }

  void changeTextColor(Color color) {
    if (state.data is! DecorationText) {
      throw Exception(
        'state.data is not DecorationText.',
      );
    }

    state = RenderItem<DecorationText>(
      transform: state.transform,
      data: _decorationText.copyWith(
        colorCode: color.hex,
      ),
      uuid: state.uuid,
      order: state.order,
    );
  }

  void changeFontFamily(String fontFamily) {
    if (state.data is! DecorationText) {
      throw Exception(
        'state.data is not DecorationText.',
      );
    }

    state = RenderItem<DecorationText>(
      transform: state.transform,
      data: _decorationText.copyWith(
        fontFamily: fontFamily,
      ),
      uuid: state.uuid,
      order: state.order,
    );
  }

  void reset() {
    state = build();
  }
}
