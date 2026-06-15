import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_picker_icon.dart';

class TextToolHeaderView extends HookWidget {
  const TextToolHeaderView({
    super.key,
    required this.renderItem,
    required this.changeFillColor,
    required this.changeTextAlign,
    required this.onColor,
  });

  final RenderItem<DecorationText> renderItem;
  final VoidCallback changeFillColor;
  final VoidCallback changeTextAlign;
  final VoidCallback onColor;

  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    // themeMode が切り替わったら装飾テーマを再評価する
    useValueListenable(controller.themeMode);
    final editingTheme = controller.decoratingTheme;

    final decorationText = renderItem.data;
    return Theme(
      data: editingTheme,
      child: Row(
        children: [
          const Spacer(flex: 4),
          IconButton(
            onPressed: changeTextAlign,
            icon: FaIcon(
              decorationText.textAlign == TextAlign.left.name
                  ? FontAwesomeIcons.alignLeft
                  : FontAwesomeIcons.alignRight,
            ),
          ),
          IconButton(onPressed: onColor, icon: const ColorPickerIcon()),
          IconButton(
            onPressed: changeFillColor,
            icon: const FaIcon(FontAwesomeIcons.fill),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              final data = renderItem.data;
              if (!(data.text?.isNotEmpty ?? false)) {
                controller.changeEditingText(false);

                return;
              }
              if (renderItem.uuid == null) {
                controller.addRenderItem(renderItem);
              } else {
                controller.updateRenderItem(renderItem);
              }
              controller.resetEditingText();
            },
            child: Text(context.l10n.save),
          ),
        ],
      ),
    );
  }
}
