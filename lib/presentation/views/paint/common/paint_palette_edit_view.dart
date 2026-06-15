import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/presentation/views/paint/common/paint_tool_header_view.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_list_selector_widget.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class PaintPaletteEditView extends HookWidget {
  const PaintPaletteEditView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    final selectedColor = useValueListenable(controller.paintPalette).color;
    return Column(
      children: [
        const Padding(padding: EdgeInsets.all(6), child: PaintToolHeaderView()),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ColorListSelectorWidget(
            selectedColor: selectedColor,
            onChangeColor: (color) {
              Vibration.call();
              controller.changeColor(color);
            },
          ),
        ),
      ],
    );
  }
}
