import 'dart:io';

import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/back_confirm/story_back_confirm_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/next_icon_button/next_icon_button_dto.dart';
import 'package:miroru_story_editor/presentation/pages/palette_page.dart';
import 'package:miroru_story_editor/presentation/res/theme.dart';

Future<void> showMiroruStoryEditor(
  BuildContext context, {
  required File imageFile,
  LeadingIconButtonDto leadingIconButton = const LeadingIconButtonDto(),
  ActionIconButtonDto actionIconButton = const ActionIconButtonDto(),
  NextIconButtonDto nextIconButton = const NextIconButtonDto(),
  BackConfirmDto backConfirm = const BackConfirmDto(),
}) async {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      builder: (context) {
        return Theme(
          data: getInstagramThemeDark(),
          child: PalettePage(
            backgroundImageFile: imageFile,
            leadingIconButton: leadingIconButton,
            actionIconButton: actionIconButton,
            backConfirm: backConfirm,
            nextIconButton: nextIconButton,
          ),
        );
      },
    ),
  );
}
