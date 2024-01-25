import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/palette/editing_text_item_state.dart';
import 'package:miroru_story_editor/presentation/views/decoration/handler/build_decoration_handler_view.dart';

class RenderItemWidget extends HookConsumerWidget {
  const RenderItemWidget({
    super.key,
    required this.item,
    this.onPointerDown,
    required this.onPointerUp,
    required this.onPointerMove,
    this.deletePosition = false,
    this.isEditingText = false,
  });

  final RenderItem item;
  final void Function(PointerDownEvent event)? onPointerDown;
  final void Function(PointerUpEvent event, Matrix4 matrix) onPointerUp;
  final void Function(PointerMoveEvent event, Matrix4 matrix) onPointerMove;
  final bool deletePosition;
  final bool isEditingText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matrixNotifier = useState<Matrix4>(
      item.transform,
    );

    final editingItem = ref.watch(editingTextItemStateProvider);
    final isEditing = editingItem.uuid == item.uuid;

    useEffect(
      () {
        matrixNotifier.value = item.transform;
        return null;
      },
      [item.transform],
    );

    // 挙動の問題でAnimatedScaleを使う
    return AnimatedScale(
      duration: const Duration(milliseconds: 50),
      scale: isEditing ? 0 : 1,
      child: AnimatedAlignPositioned(
        duration: const Duration(milliseconds: 50),
        matrix4Transform: Matrix4Transform.from(matrixNotifier.value).scale(
          deletePosition ? 0.2 : 1,
        ),
        child: MatrixGestureDetector(
          onMatrixUpdate: (m, t, s, r) {
            matrixNotifier.value = m;
          },
          child: Listener(
            onPointerDown: onPointerDown,
            onPointerUp: (event) => onPointerUp(event, matrixNotifier.value),
            onPointerMove: (event) =>
                onPointerMove(event, matrixNotifier.value),
            child: BuildDecorationHandler(item: item.data),
          ),
        ),
      ),
    );
  }
}
