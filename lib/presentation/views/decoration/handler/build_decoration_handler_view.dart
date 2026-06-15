import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/emoji/decoration_emoji.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/text/render_text_widget.dart';

class BuildDecorationHandler extends StatelessWidget {
  const BuildDecorationHandler({super.key, required this.item});

  final DecorationItem item;

  @override
  Widget build(BuildContext context) {
    return switch (item) {
      DecorationBackgroundImage() => const SizedBox(),
      DecorationEmoji(:final emoji) => Padding(
        padding: const EdgeInsets.all(25),
        child: Text(emoji ?? '', style: const TextStyle(fontSize: 80)),
      ),
      final DecorationText text => RenderTextWidget(decorationText: text),
      _ => throw Exception('not found DecorationItem type.'),
    };
  }
}
