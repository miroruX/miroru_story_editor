import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/extensions/string_extension.dart';
import 'package:miroru_story_editor/model/entities/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/enums/font_type.dart';
import 'package:miroru_story_editor/presentation/views/decoration/text/text_size_slider_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/text/text_tool_header_view.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/text/font_list_selector_view.dart';
import 'package:uuid/uuid.dart';

class TextEditingView extends HookWidget {
  const TextEditingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textItem = useState<RenderItem<DecorationText>>(
      RenderItem<DecorationText>(
        transform: Matrix4.identity(),
        data: DecorationText(
          fontFamily: FontType.roboto.name,
        ),
        uuid: const Uuid().v4(),
        order: 0,
      ),
    );

    // 関数の中は再度インスタンスを生成する必要がある
    final decorationText = textItem.value.data as DecorationText;
    final textEditingController = useTextEditingController(
      text: decorationText.text,
    );

    final focusNode = useFocusNode();

    //autoFocusを使うとパフォーマンスが悪くなる[]https://github.com/flutter/flutter/issues/20987
    useEffect(
      () {
        Future.delayed(
          const Duration(milliseconds: 200),
          focusNode.requestFocus,
        );
        return null;
      },
      [],
    );

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        context.hideKeyboard();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(4, 4, 4, 0),
              child: TextToolHeaderView(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextSizeSliderView(
                onChangeFontSize: (double fontSize) {
                  if (textItem.value.data is! DecorationText) {
                    throw Exception(
                      'textItem.value.data is not DecorationText',
                    );
                  }
                  final newDecorationText =
                      textItem.value.data as DecorationText;
                  textItem.value = RenderItem<DecorationText>(
                    transform: textItem.value.transform,
                    data: newDecorationText.copyWith(
                      fontSize: fontSize,
                    ),
                    uuid: textItem.value.uuid,
                    order: textItem.value.order,
                  );
                },
              ),
            ),
            Align(
              child: IntrinsicWidth(
                child: TextField(
                  focusNode: focusNode,
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Aa',
                    hintStyle: TextStyle(
                      fontSize: decorationText.fontSize,
                    ),
                  ),
                  style: decorationText.fontFamily.fontStyle.copyWith(
                    fontSize: decorationText.fontSize,
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.red,
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: FontListSelectorWidget(
            onChangeFontName: (fontName) {
              if (textItem.value.data is! DecorationText) {
                throw Exception(
                  'textItem.value.data is not DecorationText',
                );
              }

              final newDecorationText = textItem.value.data as DecorationText;
              textItem.value = RenderItem<DecorationText>(
                transform: textItem.value.transform,
                data: newDecorationText.copyWith(
                  fontFamily: fontName,
                ),
                uuid: textItem.value.uuid,
                order: textItem.value.order,
              );
            },
          ),
        ),
      ),
    );
  }
}
