import 'package:flutter/widgets.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/use_cases/background/fetch_blur_hash.dart';
import 'package:miroru_story_editor/model/use_cases/decoration/decoration_palette_state.dart';

class BackgroundBlurImageView extends HookConsumerWidget {
  const BackgroundBlurImageView({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // selectで必要な部分のみ監視（不要な再ビルドを回避）
    final backgroundImageFile = ref.watch(
      decorationPaletteStateProvider
          .select((state) => state.backgroundImage?.data.backgroundImageFile),
    );

    if (backgroundImageFile == null) {
      //初期値が設定されていない場合がある為、初期値が設定されるまで表示しない
      return const SizedBox.shrink();
    }

    final blurHashAsync = ref.watch(
      fetchBlurHashProvider(file: backgroundImageFile),
    );

    return blurHashAsync.maybeWhen(
      data: (blurHash) {
        return SizedBox.expand(
          child: BlurHash(
            hash: blurHash.hash,
          ),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
