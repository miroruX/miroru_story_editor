import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

part 'paint_palette.freezed.dart';

@freezed
abstract class PaintPalette with _$PaintPalette {
  const factory PaintPalette({
    @Default(BrushType.pen) BrushType brushType,
    @Default(Colors.black) Color color,
    StrokeOptions? strokeOptions,
  }) = _PaintPalette;
  const PaintPalette._();
}
