import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_palette/paint_palette.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:perfect_freehand/perfect_freehand.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'paint_palette_state.g.dart';

@riverpod
class PaintPaletteState extends _$PaintPaletteState {
  @override
  PaintPalette build() {
    return PaintPalette(
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

  void changeBrushType(
    BrushType brushType,
  ) {
    state = state.copyWith(
      brushType: brushType,
    );
  }

  void changeColor(
    Color color,
  ) {
    state = state.copyWith(
      color: color,
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
