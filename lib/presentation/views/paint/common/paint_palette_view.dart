import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:miroru_story_editor/model/use_cases/paint/paint_palette_state.dart';
import 'package:miroru_story_editor/presentation/widgets/paint/line_painter.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

// [参考]https://pub.dev/packages/perfect_freehand/example

class PaintPaletteView extends HookConsumerWidget {
  const PaintPaletteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paintPalette = ref.watch(paintPaletteStateProvider);
    final paintingLine = useState<Stroke>([]);

    void onPointerDown(PointerDownEvent details) {
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

      paintingLine.value = [point];
    }

    void onPointerMove(PointerMoveEvent details) {
      final supportsPressure = details.pressureMin < 1;
      final localPosition = details.localPosition;
      final point = PointVector(
        localPosition.dx,
        localPosition.dy,
        supportsPressure ? details.pressure : null,
      );

      paintingLine.value = [
        ...paintingLine.value,
        point,
      ];
    }

    void onPointerUp(PointerUpEvent details) {
      ref.read(paintPaletteStateProvider.notifier).addLine(
            PaintLine(
              points: paintingLine.value,
              strokeOptions: paintPalette.strokeOptions,
            ),
          );
      paintingLine.value = [];
    }

    return Scaffold(
      body: Listener(
        onPointerDown: onPointerDown,
        onPointerMove: onPointerMove,
        onPointerUp: onPointerUp,
        child: Stack(
          children: [
            Positioned.fill(
              child: ValueListenableBuilder(
                valueListenable: paintingLine,
                builder: (context, line, _) {
                  return CustomPaint(
                    painter: StrokePainter(
                      color: Colors.white,
                      lines: line == null ? [] : [line],
                      options: paintPalette.strokeOptions!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
