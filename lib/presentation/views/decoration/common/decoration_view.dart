import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';
import 'package:miroru_story_editor/presentation/widgets/custom/center_line_x_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/custom/center_line_y_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/render_item_widget.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class DecorationWidget extends HookConsumerWidget {
  const DecorationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final renderItems =
        ref.watch(paletteStateProvider).renderItemsWithoutBackgroundImage;

    final isMoving = ref.watch(paletteStateProvider).isMovingItem;

    final movingItem = useState<RenderItem?>(null);

    final debounce = useDebounce<VoidCallback>(
      debounceDelay: 100,
      callback: (VoidCallback func) {
        func();
      },
    );

    /// 中心線を表示するかどうか (縦)
    bool showCenterLineX() {
      final itemVector3 = movingItem.value?.transform.getTranslation();
      if (itemVector3 == null) {
        return false;
      }
      final itemOffset = Offset(itemVector3.x, itemVector3.y);
      const threshold = 10.0;
      if (itemOffset.dx.abs() == threshold) {
        Vibration.click();
      }
      return itemOffset.dx.abs() < threshold && isMoving;
    }

    /// 中心線を表示するかどうか (横)
    bool showCenterLineY() {
      final itemVector3 = movingItem.value?.transform.getTranslation();
      if (itemVector3 == null) {
        return false;
      }
      final itemOffset = Offset(itemVector3.x, itemVector3.y);
      const threshold = 10.0;
      if (itemOffset.dy.abs() == threshold) {
        Vibration.click();
      }
      return itemOffset.dy.abs() < threshold && isMoving;
    }

    return LayoutBuilder(
      builder: (ctx, constraints) {
        return SizedBox(
          width: constraints.biggest.width,
          height: constraints.biggest.height,
          child: Stack(
            children: [
              /// 描画するアイテム
              ...renderItems.map(
                (e) {
                  return RenderItemWidget(
                    item: e,
                    onPointerDown: (event) => ref
                        .read(paletteStateProvider.notifier)
                        .changeMovingItem(true),
                    onPointerUp: (event, matrix) => debounce.onChanged(() {
                      ref.read(paletteStateProvider.notifier).moveRenderItem(
                            e.copyWith(
                              transform: matrix,
                            ),
                          );
                    }),
                    onPointerMove: (event, matrix) {
                      movingItem.value = e.copyWith(
                        transform: matrix,
                      );
                    },
                  );
                },
              ),

              /// 中心線(Assist Center Line X)
              if (showCenterLineX()) ...[
                Align(
                  child: CenterLineXWidget(
                    height: constraints.biggest.height,
                  ),
                ),
              ],

              if (showCenterLineY()) ...[
                Align(
                  child: CenterLineYWidget(
                    width: constraints.biggest.width,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
