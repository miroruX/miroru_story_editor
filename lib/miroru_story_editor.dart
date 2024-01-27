import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/back_confirm/story_back_confirm_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/next_icon_button/next_icon_button_dto.dart';
import 'package:miroru_story_editor/presentation/pages/palette_page.dart';

Future<Uint8List?> showMiroruStoryEditor(
  BuildContext context, {
  required File imageFile,
  LeadingIconButtonDto leadingIconButton = const LeadingIconButtonDto(),
  ActionIconButtonDto actionIconButton = const ActionIconButtonDto(),
  NextIconButtonDto nextIconButton = const NextIconButtonDto(),
  BackConfirmDto backConfirm = const BackConfirmDto(),
}) async {
  return Navigator.of(context).push<Uint8List?>(
    MaterialPageRoute(
      builder: (context) {
        return ProviderScope(
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
