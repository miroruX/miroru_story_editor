import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/presentation/widgets/paint/line_painter.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

// [参考]https://pub.dev/packages/perfect_freehand/example
class PaintPaletteView extends HookWidget {
  const PaintPaletteView({super.key});

  /// 直前のポイントからこの距離（px）未満の移動は無視する。
  ///
  /// ポインタイベントはフレームより高頻度に発生するため、近接した
  /// ポイントを間引くことで getStroke の計算量とリストコピーを抑える。
  /// （比較は2乗距離で行う）
  static const double _minPointDistanceSquared = 4; // 2px

  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    final isPainting = useValueListenable(controller.palette).isPainting;

    // 完成した線はコントローラーから取得
    final paintedLines = useValueListenable(controller.paintLines);

    // キャッシュ済みのPath（完成した線のみ）
    final cachedPaths = useMemoized(
      () => paintedLines.map(computePathFromLine).toList(),
      [paintedLines],
    );

    // 描画中の線（高頻度更新用にValueNotifier使用）
    final paintingLine = useState<PaintLine?>(null);

    void onPointerDown(PointerDownEvent details) {
      final paintPalette = controller.paintPalette.value;
      final supportsPressure = details.kind == ui.PointerDeviceKind.stylus;
      final options = paintPalette.strokeOptions!.copyWith(
        simulatePressure: !supportsPressure,
      );

      controller.changeStrokeOptions(options);

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
      final currentLine = paintingLine.value;
      if (currentLine == null) {
        return;
      }
      final supportsPressure = details.pressureMin < 1;
      final localPosition = details.localPosition;

      // 直前のポイントとほぼ同じ位置ならスキップ
      final lastPoint = currentLine.points.last;
      final dx = localPosition.dx - lastPoint.x;
      final dy = localPosition.dy - lastPoint.y;
      if (dx * dx + dy * dy < _minPointDistanceSquared) {
        return;
      }

      final point = PointVector(
        localPosition.dx,
        localPosition.dy,
        supportsPressure ? details.pressure : null,
      );

      final newPoints = List<PointVector>.from(currentLine.points)..add(point);
      paintingLine.value = currentLine.copyWith(points: newPoints);
    }

    void onPointerUp(PointerUpEvent details) {
      final currentLine = paintingLine.value;
      if (currentLine == null) {
        return;
      }
      controller.addLine(currentLine);
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
                  // 完成した線をRepaintBoundaryでキャッシュ（Path事前計算済み）
                  Positioned.fill(
                    child: RepaintBoundary(
                      child: CustomPaint(
                        painter: CompletedStrokePainter(
                          lines: paintedLines,
                          cachedPaths: cachedPaths,
                        ),
                      ),
                    ),
                  ),
                  // 描画中の線のみ別レイヤーで描画（RepaintBoundaryで分離）
                  Positioned.fill(
                    child: RepaintBoundary(
                      child: ValueListenableBuilder<PaintLine?>(
                        valueListenable: paintingLine,
                        builder: (context, line, _) {
                          return CustomPaint(
                            painter: ActiveStrokePainter(line: line),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
