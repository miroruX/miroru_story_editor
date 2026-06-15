import 'package:flutter/widgets.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/use_cases/background/fetch_blur_hash.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';

class BackgroundBlurImageView extends HookWidget {
  const BackgroundBlurImageView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    final backgroundImageFile = useValueListenable(
      controller.decorationPalette,
    ).backgroundImage?.data.backgroundImageFile;

    if (backgroundImageFile == null) {
      //初期値が設定されていない場合がある為、初期値が設定されるまで表示しない
      return const SizedBox.shrink();
    }

    // computeを使ってIsolateで計算し、結果をキャッシュ（パスが変わった時のみ再計算）
    final blurHashSnapshot = useFuture(
      useMemoized(() => fetchBlurHash(backgroundImageFile), [
        backgroundImageFile.path,
      ]),
    );

    final blurHash = blurHashSnapshot.data;
    if (blurHash == null) {
      return const SizedBox.shrink();
    }

    return SizedBox.expand(child: BlurHash(hash: blurHash.hash));
  }
}
