import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/entities/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/res/editing_text_theme.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_picker_icon.dart';

class TextToolHeaderView extends HookConsumerWidget {
  const TextToolHeaderView({
    super.key,
    required this.renderItem,
    required this.changeFillColor,
  });

  final RenderItem<DecorationText> renderItem;
  final VoidCallback changeFillColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Theme(
      data: editingTextTheme(),
      child: Row(
        children: [
          const Spacer(flex: 4),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.alignLeft,
            ),
          ),
          IconButton(
            onPressed: () {},
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

              ref.read(paletteStateProvider.notifier).addRenderItem(
                    renderItem,
                  );
            },
            child: const Text('完了'),
          ),
        ],
      ),
    );
  }
}
