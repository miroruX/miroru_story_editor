import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';

class BackgroundImageView extends HookConsumerWidget {
  const BackgroundImageView({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final image = ref.watch(paletteStateProvider).backgroundImage;
    final data = image.data as DecorationBackgroundImage;

    if (data.backgroundImageFile == null) {
      //初期値が設定されていない場合がある為、初期値が設定されるまで表示しない
      return const SizedBox.shrink();
    }

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
              ref.read(paletteStateProvider.notifier).moveRenderItem(
                    image.copyWith(
                      transform: matrixNotifier.value,
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
