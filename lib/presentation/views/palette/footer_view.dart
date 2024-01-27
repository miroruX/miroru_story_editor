import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/dto/next_icon_button/next_icon_button_dto.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/share/export_image.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class FooterView extends ConsumerWidget {
  const FooterView({
    super.key,
    required this.nextIconButton,
  });

  final NextIconButtonDto nextIconButton;
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
          style: nextIconButton.style ??
              IconButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.black,
              ),
          icon: nextIconButton.icon,
        ),
      ],
    );
  }
}
