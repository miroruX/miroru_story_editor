import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/extensions/string_extension.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/presentation/views/decoration/text/text_tool_header_view.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_list_selector_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/text/font_list_selector_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/text/text_size_slider_widget.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class TextEditingView extends HookWidget {
  const TextEditingView({super.key, this.oldRenderItem});

  final RenderItem<DecorationText>? oldRenderItem;

  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    final textItem = useValueListenable(controller.editingTextItem);

    final isColorEditing = useState<bool>(false);

    // 関数の中は再度インスタンスを生成する必要がある
    final decorationText = textItem.data;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        context.hideKeyboard();

        final data = textItem.data;
        if (!(data.text?.isNotEmpty ?? false)) {
          controller.changeEditingText(false);

          return;
        }

        if (textItem.uuid == null) {
          controller.addRenderItem(textItem);
        } else {
          controller.updateRenderItem(textItem);
        }
        controller.resetEditingText();
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: TextToolHeaderView(
              renderItem: textItem,
              onColor: () {
                Vibration.call();
                isColorEditing.value = !isColorEditing.value;
              },
              changeTextAlign: () {
                Vibration.call();
                controller.changeTextAlign();
              },
              changeFillColor: () {
                Vibration.call();
                controller.changeFillColor();
              },
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextSizeSliderWidget(
              fontSize: decorationText.fontSize ?? 20,
              onChangeFontSize: (size) {
                Vibration.call();
                controller.changeFontSize(size);
              },
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: IntrinsicWidth(
                child: Directionality(
                  textDirection: decorationText.textAlign == TextAlign.left.name
                      ? TextDirection.ltr
                      : TextDirection.rtl,
                  child: TextFormField(
                    autofocus: true,
                    onChanged: controller.changeText,
                    initialValue: decorationText.text,
                    decoration: InputDecoration(
                      hintText: 'Aa',
                      fillColor: decorationText.backgroundColorCode.toColor,
                      hintStyle: TextStyle(
                        fontSize: decorationText.fontSize,
                        color: decorationText.colorCode.toColor.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                    maxLines: null,
                    style: decorationText.fontFamily.fontStyle.copyWith(
                      fontSize: decorationText.fontSize,
                      color: decorationText.colorCode.toColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: isColorEditing.value
                  ? ColorListSelectorWidget(
                      selectedColor: decorationText.colorCode.toColor,
                      onChangeColor: (color) {
                        Vibration.call();
                        controller.changeTextColor(color);
                      },
                    )
                  : FontListSelectorWidget(
                      onChangeFontName: (font) {
                        Vibration.call();
                        controller.changeFontFamily(font);
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
