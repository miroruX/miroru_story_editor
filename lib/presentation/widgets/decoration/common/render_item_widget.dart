import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';
import 'package:miroru_story_editor/presentation/views/decoration/handler/build_decoration_handler_view.dart';

class RenderItemWidget extends HookWidget {
  const RenderItemWidget({
    super.key,
    required this.item,
    required this.onRenderChange,
  });

  final RenderItem item;
  final void Function(Matrix4 matrix) onRenderChange;

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

    // view層でdebounceを使いたかったが、変更の通知が激しいので、
    final debounce = useDebounce<VoidCallback>(
      debounceDelay: 100,
      callback: (VoidCallback func) {
        func();
      },
    );

    return AnimatedAlignPositioned(
      duration: Duration.zero,
      matrix4Transform: Matrix4Transform.from(matrixNotifier.value),
      child: MatrixGestureDetector(
        onMatrixUpdate: (m, t, s, r) {
          matrixNotifier.value = m;
        },
        child: Listener(
          onPointerUp: (PointerUpEvent event) {
            debounce.onChanged(() {
              onRenderChange(matrixNotifier.value);
            });
          },
          child: BuildDecorationHandler(item: item.data),
        ),
      ),
    );
  }
}
