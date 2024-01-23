import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/res/editing_text_theme.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_picker_icon.dart';

class TextToolHeaderView extends HookConsumerWidget {
  const TextToolHeaderView({
    super.key,
  });

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
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.fill,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              ref.read(paletteStateProvider.notifier).changeEditingText(
                    false,
                  );
            },
            child: const Text('完了'),
          ),
        ],
      ),
    );
  }
}
