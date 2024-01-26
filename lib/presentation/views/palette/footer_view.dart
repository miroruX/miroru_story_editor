import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/dto/next_icon_button/next_icon_button_dto.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class FooterView extends StatelessWidget {
  const FooterView({
    super.key,
    required this.nextIconButton,
  });

  final NextIconButtonDto nextIconButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        IconButton(
          onPressed: Vibration.call,
          style: nextIconButton.style ??
              IconButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.black,
              ),
          icon: nextIconButton.icon,
        ),
      ],
    );
  }
}
