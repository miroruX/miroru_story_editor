import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/presentation/views/decoration/handler/build_decoration_handler_view.dart';

class RenderItemWidget extends HookWidget {
  const RenderItemWidget({
    super.key,
    required this.item,
    this.onPointerDown,
    required this.onPointerUp,
    this.onPointerMove,
  });

  final RenderItem item;
  final void Function(PointerDownEvent event)? onPointerDown;
  final void Function(PointerUpEvent event, Matrix4 matrix) onPointerUp;
  final void Function(PointerMoveEvent event)? onPointerMove;

  @override
  Widget build(BuildContext context) {
    final matrixNotifier = useState<Matrix4>(
      item.transform,
    );

    useEffect(
      () {
        matrixNotifier.value = item.transform;
        return null;
      },
      [item.transform],
    );

    return AnimatedAlignPositioned(
      duration: Duration.zero,
      matrix4Transform: Matrix4Transform.from(matrixNotifier.value),
      child: MatrixGestureDetector(
        onMatrixUpdate: (m, t, s, r) {
          matrixNotifier.value = m;
        },
        child: Listener(
          onPointerDown: onPointerDown,
          onPointerUp: (event) => onPointerUp(event, matrixNotifier.value),
          onPointerMove: onPointerMove,
          child: BuildDecorationHandler(item: item.data),
        ),
      ),
    );
  }
}
