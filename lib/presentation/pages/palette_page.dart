import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/back_confirm/story_back_confirm_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/next_icon_button/next_icon_button_dto.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/decoration/decoration_palette_state.dart';
import 'package:miroru_story_editor/presentation/views/palette/footer_view.dart';
import 'package:miroru_story_editor/presentation/views/palette/palette_view.dart';
import 'package:uuid/uuid.dart';

class PalettePage extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        Future.microtask(
          () => ref
              .read(decorationPaletteStateProvider.notifier)
              .initHistoryRenderItem(
            [
              [
                RenderItem<DecorationBackgroundImage>(
                  transform: Matrix4.identity(),
                  data: DecorationBackgroundImage(
                    backgroundImageFile: backgroundImageFile,
                  ),
                  uuid: const Uuid().v4(),
                  order: 0,
                ),
              ]
            ],
          ),
        );
        return null;
      },
      [],
    );
    return Scaffold(
      body: SafeArea(
        child: PaletteView(
          backgroundImageFile: backgroundImageFile,
          leadingIconButton: leadingIconButton,
          actionIconButton: actionIconButton,
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: FooterView(
            nextIconButton: nextIconButton,
          ),
        ),
      ),
    );
  }
}
