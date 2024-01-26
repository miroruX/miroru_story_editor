import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:miroru_story_editor/model/use_cases/paint/paint_lines_state.dart';
import 'package:miroru_story_editor/model/use_cases/paint/paint_palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/views/paint/common/paint_tool_header_view.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_list_selector_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/paint/line_painter.dart';
import 'package:miroru_story_editor/util/vibration.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

// [参考]https://pub.dev/packages/perfect_freehand/example
class PaintPaletteView extends HookConsumerWidget {
  const PaintPaletteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPainting = ref.watch(
      paletteStateProvider.select((value) => value.isPainting),
    );
    final selectedColor =
        ref.watch(paintPaletteStateProvider.select((value) => value)).color;

    final painedLines = useState<List<PaintLine>>([]);
    final paintingLine = useState<PaintLine?>(null);

    ref.listen(paintLinesStateProvider, (previous, next) async {
      painedLines.value = next;
    });

    void onPointerDown(PointerDownEvent details) {
      final paintPalette = ref.read(paintPaletteStateProvider);
      final supportsPressure = details.kind == PointerDeviceKind.stylus;
      final options = paintPalette.strokeOptions!
          .copyWith(simulatePressure: !supportsPressure);

      ref.read(paintPaletteStateProvider.notifier).changeStrokeOptions(options);

      final localPosition = details.localPosition;
      final point = PointVector(
        localPosition.dx,
        localPosition.dy,
        supportsPressure ? details.pressure : null,
      );

      paintingLine.value = PaintLine(
        brushType: paintPalette.brushType,
        color: paintPalette.color,
        strokeOptions: options,
        points: [point],
      );
    }

    void onPointerMove(PointerMoveEvent details) {
      if (paintingLine.value == null) {
        return;
      }
      final supportsPressure = details.pressureMin < 1;
      final localPosition = details.localPosition;
      final point = PointVector(
        localPosition.dx,
        localPosition.dy,
        supportsPressure ? details.pressure : null,
      );

      paintingLine.value = paintingLine.value!.copyWith(
        points: [...paintingLine.value!.points, point],
      );
    }

    void onPointerUp(PointerUpEvent details) {
      if (paintingLine.value == null) {
        return;
      }
      ref.read(paintLinesStateProvider.notifier).addLine(
            paintingLine.value!,
          );
      paintingLine.value = null;
    }

    return Stack(
      children: [
        // sketcher
        IgnorePointer(
          ignoring: !isPainting,
          child: Listener(
            onPointerDown: onPointerDown,
            onPointerMove: onPointerMove,
            onPointerUp: onPointerUp,
            child: SizedBox.expand(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ValueListenableBuilder(
                      valueListenable: paintingLine,
                      builder: (context, line, _) {
                        return CustomPaint(
                          painter: StrokePainter(
                            lines: painedLines.value.map((e) => e).toList(),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: ValueListenableBuilder(
                      valueListenable: paintingLine,
                      builder: (context, line, _) {
                        return CustomPaint(
                          painter: StrokePainter(
                            lines: line == null || line.points.isEmpty
                                ? []
                                : [line],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (isPainting) ...[
          const PaintToolHeaderView(),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ColorListSelectorWidget(
                selectedColor: selectedColor,
                onChangeColor: (color) {
                  Vibration.call();
                  ref
                      .read(paintPaletteStateProvider.notifier)
                      .changeColor(color);
                },
              ),
            ),
          ),
        ],
      ],
    );
  }
}
