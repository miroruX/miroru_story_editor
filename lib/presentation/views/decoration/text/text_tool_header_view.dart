import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:miroru_story_editor/presentation/res/editing_text_theme.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_picker_icon.dart';

class TextToolHeaderView extends HookWidget {
  const TextToolHeaderView({
    super.key,
    required this.paletteReducer,
  });

  final Store<PaletteState, PaletteAction> paletteReducer;
  @override
  Widget build(BuildContext context) {
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
              paletteReducer.dispatch(
                ChangeEditText(false),
              );
            },
            child: const Text('完了'),
          ),
        ],
      ),
    );
  }
}
