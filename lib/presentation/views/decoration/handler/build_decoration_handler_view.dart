import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/decorations/emoji/decoration_emoji.dart';
import 'package:miroru_story_editor/model/entities/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/text/render_text_widget.dart';

class BuildDecorationHandler extends StatelessWidget {
  const BuildDecorationHandler({
    super.key,
    required this.item,
  });

  final DecorationItem item;

  @override
  Widget build(BuildContext context) {
    if (item is DecorationBackgroundImage) {
      return const SizedBox();
    } else if (item is DecorationEmoji) {
      final data = item as DecorationEmoji;
      return Text(
        data.emoji ?? '',
        style: const TextStyle(fontSize: 80),
      );
    } else if (item is DecorationText) {
      return RenderTextWidget(
        decorationText: item as DecorationText,
      );
    } else {
      throw Exception('not found DecorationItem type.');
    }
  }
}
