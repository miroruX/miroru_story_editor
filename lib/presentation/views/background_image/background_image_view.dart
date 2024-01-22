import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';

class BackgroundImageView extends HookWidget {
  const BackgroundImageView({
    super.key,
    required this.paletteReducer,
  });
  final Store<PaletteState, PaletteAction> paletteReducer;
  @override
  Widget build(BuildContext context) {
    final image = paletteReducer.state.backgroundImage;

    final data = image.data as DecorationBackgroundImage;

    final matrixNotifier = useState<Matrix4>(
      image.transform,
    );

    final debounce = useDebounce<VoidCallback>(
      debounceDelay: 100,
      callback: (VoidCallback func) {
        func();
      },
    );

    useEffect(
      () {
        matrixNotifier.value = image.transform;
        return null;
      },
      [image.transform],
    );

    return MatrixGestureDetector(
      onMatrixUpdate: (m, t, s, r) {
        matrixNotifier.value = m;
      },
      child: Listener(
        onPointerUp: (PointerUpEvent event) {
          debounce.onChanged(
            () {
              paletteReducer.dispatch(
                MoveRenderItem(
                  image.copyWith(
                    transform: matrixNotifier.value,
                  ),
                ),
              );
            },
          );
        },
        child: AnimatedBuilder(
          animation: matrixNotifier,
          builder: (context, child) {
            return Transform(
              transform: matrixNotifier.value,
              child: Image.file(
                data.backgroundImageFile!,
                height: double.infinity,
                width: double.infinity,
              ),
            );
          },
        ),
      ),
    );
  }
}
