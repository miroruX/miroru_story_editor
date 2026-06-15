import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class FooterView extends HookWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    // themeMode が切り替わったらフッターテーマを再評価する
    useValueListenable(controller.themeMode);
    final footerTheme = controller.footerTheme;
    final isShowExportButton = useValueListenable(
      controller.palette,
    ).isShowExportButton;
    return Theme(
      data: footerTheme,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: isShowExportButton
                ? () async {
                    await Vibration.call();
                    final data = await controller.exportImage();
                    if (!context.mounted) {
                      return;
                    }
                    if (data == null) {
                      context.showSnackBar(context.l10n.export_failure);
                      return;
                    }
                    Navigator.of(context).pop(data);
                  }
                : null,
            icon: const FaIcon(FontAwesomeIcons.arrowRight),
          ),
        ],
      ),
    );
  }
}
