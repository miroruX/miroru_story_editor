import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_global_key.dart';
import 'package:miroru_story_editor/presentation/widgets/custom/center_line_x_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/custom/center_line_y_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/render_item_widget.dart';
import 'package:miroru_story_editor/util/is_moving_center.dart';
import 'package:miroru_story_editor/util/is_moving_delete_area.dart';

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
    final isMovingCenterX = useState(false);
    final isMovingCenterY = useState(false);
    final isNearDeleteArea = useState(false);

    final pointer = useState<Offset?>(null);

    final debounce = useDebounce<VoidCallback>(
      debounceDelay: 100,
      callback: (VoidCallback func) {
        func();
      },
    );

    final decorationAreaKey = useGlobalKey();
    final deleteIconKey = useGlobalKey();

    // Assist Center Line
    useEffect(
      () {
        if (!isMoving) {
          isMovingCenterX.value = false;
          isMovingCenterY.value = false;
          isNearDeleteArea.value = false;
        }
        final itemVector3 = movingItem.value?.transform.getTranslation();
        if (itemVector3 != null && isMoving) {
          isMovingCenterX.value = isMovingCenter(
            transform: movingItem.value!.transform,
            axis: Axis.horizontal,
            threshold: 10,
          );
          isMovingCenterY.value = isMovingCenter(
            transform: movingItem.value!.transform,
            axis: Axis.vertical,
            threshold: 10,
          );

          if (pointer.value == null) {
            return null;
          }

          final pointerBox = Offset(pointer.value!.dx, pointer.value!.dy);

          final deleteIconBox =
              deleteIconKey.currentContext?.findRenderObject() as RenderBox?;

          final deleteIconOffset = deleteIconBox?.localToGlobal(Offset.zero);

          if (deleteIconBox == null || deleteIconOffset == null) {
            return null;
          }

          final deleteIconArea = Rect.fromCenter(
            center: deleteIconOffset,
            width: deleteIconBox.size.width,
            height: deleteIconBox.size.height,
          );

          isNearDeleteArea.value = isPointerNearDeleteArea(
            pointerOffset: pointerBox,
            deleteAreaOffset: deleteIconArea.center,
            threshold: 50,
          );
        }
        return null;
      },
      [movingItem.value?.transform, isMoving],
    );

    return LayoutBuilder(
      builder: (ctx, constraints) {
        return SizedBox(
          width: constraints.biggest.width,
          height: constraints.biggest.height,
          child: Stack(
            key: decorationAreaKey,
            children: [
              /// 描画するアイテム
              ...renderItems.map(
                (e) {
                  return RenderItemWidget(
                    item: e,
                    deletePosition: isNearDeleteArea.value,

                    /// アイテムをタップしたときの処理
                    onPointerDown: (event) {
                      ref
                          .read(paletteStateProvider.notifier)
                          .changeMovingItem(true);
                    },

                    /// アイテムを離したときの処理
                    onPointerUp: (event, matrix) {
                      if (isNearDeleteArea.value) {
                        ref
                            .read(paletteStateProvider.notifier)
                            .removeRenderItem(e.uuid);
                      } else {
                        debounce.onChanged(() {
                          movingItem.value = null;
                          pointer.value = null;
                          ref
                              .read(paletteStateProvider.notifier)
                              .moveRenderItem(
                                e.copyWith(
                                  transform: matrix,
                                ),
                              );
                        });
                      }
                    },

                    /// アイテムを動かしているときの処理
                    onPointerMove: (event, matrix) {
                      pointer.value = event.position;
                      movingItem.value = e.copyWith(
                        transform: matrix,
                      );
                    },
                  );
                },
              ),

              /// 中心線(Assist Center Line X)
              if (isMovingCenterX.value) ...[
                Align(
                  child: CenterLineXWidget(
                    height: constraints.biggest.height,
                  ),
                ),
              ],

              if (isMovingCenterY.value) ...[
                Align(
                  child: CenterLineYWidget(
                    width: constraints.biggest.width,
                  ),
                ),
              ],

              if (isMoving) ...[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20), // 下部からの距離
                    child: Icon(
                      key: deleteIconKey,
                      Icons.delete,
                      color: isNearDeleteArea.value
                          ? Colors.red
                          : Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Future isDeletePosition(
    RenderItem item,
  ) async {
    return item.deletePosition;
  }
}
