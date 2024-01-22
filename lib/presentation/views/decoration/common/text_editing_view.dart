import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/extensions/string_extension.dart';
import 'package:miroru_story_editor/model/entities/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/enums/font_type.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:miroru_story_editor/presentation/views/decoration/text/text_size_slider_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/text/text_tool_header_view.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/text/font_list_selector_view.dart';
import 'package:uuid/uuid.dart';

class TextEditingView extends HookWidget {
  const TextEditingView({super.key, required this.paletteReducer});

  final Store<PaletteState, PaletteAction> paletteReducer;

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

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
            child: TextToolHeaderView(
              paletteReducer: paletteReducer,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  TextSizeSliderView(
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
                  Align(
                    child: IntrinsicWidth(
                      child: TextField(
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
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: FontListSelectorWidget(
                onChangeFontName: (fontName) {
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
                      fontFamily: fontName,
                    ),
                    uuid: textItem.value.uuid,
                    order: textItem.value.order,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
