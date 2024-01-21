import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';

class BackgroundImageView extends HookWidget {
  const BackgroundImageView({
    super.key,
    required this.onRenderChange,
    required this.paletteState,
  });
  final PaletteState paletteState;
  final void Function(Matrix4, Matrix4, Matrix4, Matrix4) onRenderChange;
  @override
  Widget build(BuildContext context) {
    if (paletteState.showRenderItems.isEmpty) {
      throw Exception(
        'backgroundImage is not found.',
      );
    }

    final image = paletteState.showRenderItems.first;

    if (image is! RenderItem<DecorationBackgroundImage>) {
      throw Exception(
        'backgroundImage is not DecorationBackgroundImage',
      );
    }

    final data = image.data as DecorationBackgroundImage;

    final matrixNotifier = useState<Matrix4>(
      image.transform,
    );

    final debounce = useDebounce<VoidCallback>(
      debounceDelay: 1000,
      callback: (VoidCallback func) {
        func();
      },
    );

    useEffect(
      () {
        matrixNotifier.value = image.transform;
        return null;
      },
      [paletteState.showRenderItems.first.transform],
    );
    return MatrixGestureDetector(
      onMatrixUpdate: (m, t, s, r) {
        matrixNotifier.value = m;
        debounce.onChanged(() {
          onRenderChange(
            matrixNotifier.value,
            matrixNotifier.value,
            matrixNotifier.value,
            matrixNotifier.value,
          );
        });
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
    );
  }
}
