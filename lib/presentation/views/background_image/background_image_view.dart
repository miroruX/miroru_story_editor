import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';

class BackgroundImageView extends HookWidget {
  const BackgroundImageView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    final isPainting = useValueListenable(controller.palette).isPainting;
    final backgroundImage = useValueListenable(
      controller.decorationPalette,
    ).backgroundImage;

    if (backgroundImage == null) {
      //初期値が設定されていない場合がある為、初期値が設定されるまで表示しない
      return const SizedBox.shrink();
    }

    final backgroundImageFile = backgroundImage.data.backgroundImageFile;
    final imageTransform = backgroundImage.transform;
    final imageUuid = backgroundImage.uuid;

    if (backgroundImageFile == null) {
      return const SizedBox.shrink();
    }

    final matrixNotifier = useState<Matrix4>(imageTransform);

    final debounce = useDebounce<VoidCallback>(
      debounceDelay: 50, // 100ms→50msに短縮（レスポンス向上）
      callback: (VoidCallback func) {
        func();
      },
    );

    useEffect(() {
      matrixNotifier.value = imageTransform;
      return null;
    }, [imageTransform]);

    return IgnorePointer(
      ignoring: isPainting,
      child: MatrixGestureDetector(
        onMatrixUpdate: (m, t, s, r) {
          matrixNotifier.value = m;
        },
        child: Listener(
          onPointerUp: (PointerUpEvent event) {
            debounce.onChanged(() {
              controller.moveBackgroundImage(
                transform: matrixNotifier.value,
                uuid: imageUuid,
              );
            });
          },
          child: AnimatedBuilder(
            animation: matrixNotifier,
            builder: (context, child) {
              return Transform(transform: matrixNotifier.value, child: child);
            },
            // childを外出しして、Transform変更時にImageを再ビルドしない
            child: Image.file(
              backgroundImageFile,
              height: double.infinity,
              width: double.infinity,
              cacheWidth: 2000,
            ),
          ),
        ),
      ),
    );
  }
}
