import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_palette/paint_palette.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:perfect_freehand/perfect_freehand.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'paint_palette_state.g.dart';

@Riverpod(keepAlive: true)
class PaintPaletteState extends _$PaintPaletteState {
  @override
  PaintPalette build() {
    return PaintPalette(
      lines: [],
      strokeOptions: StrokeOptions(
        size: 16,
        thinning: 0.7,
        smoothing: 0.5,
        streamline: 0.5,
        start: StrokeEndOptions.start(
          taperEnabled: true,
          customTaper: 0,
          cap: true,
        ),
        end: StrokeEndOptions.end(
          taperEnabled: true,
          customTaper: 0,
          cap: true,
        ),
        simulatePressure: true,
        isComplete: false,
      ),
    );
  }

  void addLine(
    PaintLine line,
  ) {
    state = state.copyWith(
      lines: [...state.lines, line],
    );
  }

  void delete() {
    state = state.copyWith(
      lines: state.lines.sublist(0, state.lines.length - 1),
    );
  }

  void clear() {
    state = state.copyWith(
      lines: [],
    );
  }

  void changeBrushType(
    BrushType brushType,
  ) {
    state = state.copyWith(
      brushType: brushType,
    );
  }

  void changeColorCode(
    String colorCode,
  ) {
    state = state.copyWith(
      colorCode: colorCode,
    );
  }

  void changeStrokeOptions(
    StrokeOptions strokeOptions,
  ) {
    state = state.copyWith(
      strokeOptions: strokeOptions,
    );
  }
}
