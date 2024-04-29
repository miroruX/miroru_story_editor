import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/share/export_image.dart';
import 'package:miroru_story_editor/model/use_cases/theme/theme_data/footer_theme_data.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class FooterView extends ConsumerWidget {
  const FooterView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final footerTheme = ref.watch(footerThemeDataProvider);
    final isShowExportButton = ref.watch(
      paletteStateProvider.select((value) => value.isShowExportButton),
    );
    return Theme(
      data: footerTheme,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: isShowExportButton
                ? () async {
                    await Vibration.call();
                    final data = await ref.read(exportImageProvider.future);
                    if (data == null) {
                      context.showSnackBar(context.l10n.export_failure);
                      return;
                    }
                    Navigator.of(context).pop(data);
                  }
                : null,
            icon: const Icon(Ionicons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
