import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/decoration/decoration_palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/editing_text_item_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editing_decoration_theme_data.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_picker_icon.dart';

class TextToolHeaderView extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final editingTheme = ref.watch(editingDecorationThemeProvider);
    return Theme(
      data: editingTheme,
      child: Row(
        children: [
          const Spacer(flex: 4),
          IconButton(
            onPressed: changeTextAlign,
            icon: const Icon(
              FontAwesomeIcons.alignLeft,
            ),
          ),
          IconButton(
            onPressed: onColor,
            icon: const ColorPickerIcon(),
          ),
          IconButton(
            onPressed: changeFillColor,
            icon: const Icon(
              FontAwesomeIcons.fill,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              final data = renderItem.data as DecorationText;
              if (!(data.text?.isNotEmpty ?? false)) {
                ref.read(paletteStateProvider.notifier).changeEditingText(
                      false,
                    );

                return;
              }
              if (renderItem.uuid == null) {
                ref.read(decorationPaletteStateProvider.notifier).addRenderItem(
                      renderItem,
                    );
              } else {
                ref
                    .read(decorationPaletteStateProvider.notifier)
                    .updateRenderItem(
                      renderItem,
                    );
              }
              ref.read(editingTextItemStateProvider.notifier).reset();
            },
            child: const Text('完了'),
          ),
        ],
      ),
    );
  }
}
