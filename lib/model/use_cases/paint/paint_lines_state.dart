import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'paint_lines_state.g.dart';

@Riverpod(keepAlive: true)
class PaintLinesState extends _$PaintLinesState {
  @override
  List<PaintLine> build() {
    return [];
  }

  void addLine(
    PaintLine line,
  ) {
    state = [...state, line];
  }

  void delete() {
    state = state.sublist(0, state.length - 1);
  }

  void clear() {
    state = [];
  }
}
