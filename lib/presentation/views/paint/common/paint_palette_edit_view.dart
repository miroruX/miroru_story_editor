import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/use_cases/paint/paint_palette_state.dart';
import 'package:miroru_story_editor/presentation/views/paint/common/paint_tool_header_view.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_list_selector_widget.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class PaintPaletteEditView extends ConsumerWidget {
  const PaintPaletteEditView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(6),
          child: PaintToolHeaderView(),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ColorListSelectorWidget(
            selectedColor: ref
                .watch(paintPaletteStateProvider.select((value) => value))
                .color,
            onChangeColor: (color) {
              Vibration.call();
              ref.read(paintPaletteStateProvider.notifier).changeColor(color);
            },
          ),
        ),
      ],
    );
  }
}
