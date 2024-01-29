import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/share/export_image.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class FooterView extends ConsumerWidget {
  const FooterView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isShowExportButton = ref.watch(
      paletteStateProvider.select((value) => value.isShowExportButton),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: isShowExportButton
              ? () async {
                  await Vibration.call();
                  final data = await ref.read(exportImageProvider.future);
                  if (data == null) {
                    context.showSnackBar('画像の書き出しに失敗しました');
                    return;
                  }
                  Navigator.of(context).pop(data);
                }
              : null,
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.black,
          ),
          icon: const Icon(Ionicons.arrow_forward),
        ),
      ],
    );
  }
}
