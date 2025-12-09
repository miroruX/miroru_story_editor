import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

part 'paint_line.freezed.dart';

typedef Stroke = List<PointVector>;

@freezed
abstract class PaintLine with _$PaintLine {
  const factory PaintLine({
    @Default([]) Stroke points,
    required StrokeOptions strokeOptions,
    @Default(Colors.black) Color color,
    @Default(BrushType.pen) BrushType brushType,
  }) = _PaintLine;
  const PaintLine._();
}
