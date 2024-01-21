import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/back_confirm/story_back_confirm_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/next_icon_button/next_icon_button_dto.dart';
import 'package:miroru_story_editor/presentation/views/footer_view.dart';
import 'package:miroru_story_editor/presentation/views/palette_view.dart';

class PalettePage extends HookWidget {
  const PalettePage({
    super.key,
    required this.backgroundImageFile,
    required this.leadingIconButton,
    required this.actionIconButton,
    required this.backConfirm,
    required this.nextIconButton,
  });
  final File backgroundImageFile;
  final LeadingIconButtonDto leadingIconButton;
  final ActionIconButtonDto actionIconButton;
  final BackConfirmDto backConfirm;
  final NextIconButtonDto nextIconButton;

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ),
        );
        return null;
      },
      [],
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PaletteView(
                backgroundImageFile: backgroundImageFile,
                leadingIconButton: leadingIconButton,
                actionIconButton: actionIconButton,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: FooterView(
                nextIconButton: nextIconButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
