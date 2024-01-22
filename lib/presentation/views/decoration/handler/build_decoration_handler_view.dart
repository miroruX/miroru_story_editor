import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/decorations/emoji/decoration_emoji.dart';
import 'package:miroru_story_editor/model/entities/decorations/text/decoration_text.dart';

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
      return const SizedBox();
    } else if (item is DecorationText) {
      return const ColoredBox(
        color: Colors.red,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text('テキスト'),
        ),
      );
    } else {
      throw Exception('not found DecorationItem type.');
    }
  }
}
