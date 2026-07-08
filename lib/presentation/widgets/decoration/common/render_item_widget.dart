import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/presentation/views/decoration/handler/build_decoration_handler_view.dart';

class RenderItemWidget extends HookWidget {
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
  Widget build(BuildContext context) {
    final matrixNotifier = useState<Matrix4>(item.transform);
    final isDragging = useState(false);

    // editingTextItem全体を購読すると、テキスト編集中の1文字入力ごとに
    // 全アイテムが再ビルドされるため、自分が編集対象かどうかの
    // bool にだけ反応するようにする。
    final controller = EditorScope.of(context);
    final isEditing = useListenableSelector(
      controller.editingTextItem,
      () => controller.editingTextItem.value.uuid == item.uuid,
    );

    useEffect(() {
      matrixNotifier.value = item.transform;
      return null;
    }, [item.transform]);

    // 挙動の問題でAnimatedScaleを使う
    return AnimatedScale(
      duration: const Duration(milliseconds: 50),
      scale: isEditing ? 0 : 1,
      child: AnimatedAlignPositioned(
        // ドラッグ中にアニメーションを挟むと指の動きに常に50ms遅れて
        // 追従する「もっさり感」が出るため、ドラッグ中は即時反映する。
        duration: isDragging.value
            ? Duration.zero
            : const Duration(milliseconds: 50),
        matrix4Transform: Matrix4Transform.from(
          matrixNotifier.value,
        ).scale(deletePosition ? 0.2 : 1),
        child: MatrixGestureDetector(
          onMatrixUpdate: (m, t, s, r) {
            matrixNotifier.value = m;
          },
          child: Listener(
            onPointerDown: (event) {
              isDragging.value = true;
              onPointerDown?.call(event);
            },
            onPointerUp: (event) {
              isDragging.value = false;
              onPointerUp(event, matrixNotifier.value);
            },
            onPointerCancel: (event) {
              isDragging.value = false;
            },
            onPointerMove: (event) =>
                onPointerMove(event, matrixNotifier.value),
            child: BuildDecorationHandler(item: item.data),
          ),
        ),
      ),
    );
  }
}
