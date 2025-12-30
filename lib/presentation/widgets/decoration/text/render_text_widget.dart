import 'package:flutter/material.dart';
import 'package:miroru_story_editor/extensions/string_extension.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/text/decoration_text.dart';

class RenderTextWidget extends StatelessWidget {
  const RenderTextWidget({
    super.key,
    required this.decorationText,
  });
  final DecorationText decorationText;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ColoredBox(
        color: decorationText.backgroundColorCode.toColor,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Text(
            decorationText.text ?? '',
            style: decorationText.fontFamily!.fontStyle.copyWith(
              fontSize: decorationText.fontSize,
              color: decorationText.colorCode.toColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
