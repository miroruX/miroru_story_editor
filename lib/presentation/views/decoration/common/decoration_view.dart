import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';
import 'package:miroru_story_editor/presentation/widgets/custom/center_line_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/render_item_widget.dart';

class DecorationWidget extends HookConsumerWidget {
  const DecorationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final renderItems =
        ref.watch(paletteStateProvider).renderItemsWithoutBackgroundImage;

    final isMoving = ref.watch(paletteStateProvider).isMovingItem;

    final pointer = useState<Offset>(Offset.zero);

    final debounce = useDebounce<VoidCallback>(
      debounceDelay: 100,
      callback: (VoidCallback func) {
        func();
      },
    );

    bool showCenterLine(
      ValueNotifier<Offset> pointer,
      BoxConstraints constraints,
    ) {
      return (pointer.value.dy > (constraints.biggest.height / 2 - 10)) &&
          (pointer.value.dy < (constraints.biggest.height / 2 + 10));
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
                    onPointerMove: (event) =>
                        pointer.value = event.localPosition,
                  );
                },
              ),

              /// 中心線(Assist Center Line)
              if (showCenterLine(pointer, constraints) && isMoving) ...[
                CenterLineWidget(
                  height: constraints.biggest.height,
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
