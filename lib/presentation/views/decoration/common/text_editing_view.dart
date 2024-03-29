import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/extensions/string_extension.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/decoration/decoration_palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/editing_text_item_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/views/decoration/text/text_tool_header_view.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/color_list_selector_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/text/font_list_selector_widget.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/text/text_size_slider_widget.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class TextEditingView extends HookConsumerWidget {
  const TextEditingView({
    super.key,
    this.oldRenderItem,
  });

  final RenderItem<DecorationText>? oldRenderItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textItem = ref.watch(editingTextItemStateProvider);

    final isColorEditing = useState<bool>(false);

    // 関数の中は再度インスタンスを生成する必要がある
    final decorationText = textItem.data as DecorationText;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        context.hideKeyboard();

        final data = textItem.data as DecorationText;
        if (!(data.text?.isNotEmpty ?? false)) {
          ref.read(paletteStateProvider.notifier).changeEditingText(
                false,
              );

          return;
        }

        if (textItem.uuid == null) {
          ref.read(decorationPaletteStateProvider.notifier).addRenderItem(
                textItem,
              );
        } else {
          ref.read(decorationPaletteStateProvider.notifier).updateRenderItem(
                textItem,
              );
        }
        ref.read(editingTextItemStateProvider.notifier).reset();
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
                ref
                    .read(editingTextItemStateProvider.notifier)
                    .changeTextAlign();
              },
              changeFillColor: () {
                Vibration.call();
                ref
                    .read(editingTextItemStateProvider.notifier)
                    .changeFillColor();
              },
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextSizeSliderWidget(
              fontSize: decorationText.fontSize ?? 20,
              onChangeFontSize: (size) {
                Vibration.call();
                ref
                    .read(editingTextItemStateProvider.notifier)
                    .changeFontSize(size);
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
                    onChanged: ref
                        .read(editingTextItemStateProvider.notifier)
                        .changeText,
                    initialValue: decorationText.text,
                    decoration: InputDecoration(
                      hintText: 'Aa',
                      fillColor: decorationText.backgroundColorCode.toColor,
                      hintStyle: TextStyle(
                        fontSize: decorationText.fontSize,
                        color:
                            decorationText.colorCode.toColor.withOpacity(0.5),
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
                        ref
                            .read(editingTextItemStateProvider.notifier)
                            .changeTextColor(color);
                      },
                    )
                  : FontListSelectorWidget(
                      onChangeFontName: (font) {
                        Vibration.call();
                        ref
                            .read(editingTextItemStateProvider.notifier)
                            .changeFontFamily(font);
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
