import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

part 'paint_palette.freezed.dart';

@freezed
class PaintPalette with _$PaintPalette {
  const factory PaintPalette({
    required List<PaintLine> lines,
    @Default(BrushType.pen) BrushType brushType,
    String? colorCode,
    StrokeOptions? strokeOptions,
  }) = _PaintPalette;
  const PaintPalette._();
}
