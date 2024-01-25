import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

part 'paint_line.freezed.dart';

typedef Stroke = List<PointVector>;

@freezed
class PaintLine with _$PaintLine {
  const factory PaintLine({
    @Default([]) Stroke points,
    StrokeOptions? strokeOptions,
  }) = _PaintLine;
  const PaintLine._();
}
