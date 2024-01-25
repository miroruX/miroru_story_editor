import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_key.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/views/background_image/background_image_blur_view.dart';
import 'package:miroru_story_editor/presentation/views/background_image/background_image_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/common/decoration_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/common/text_editing_view.dart';
import 'package:miroru_story_editor/presentation/views/header_view.dart';

class PaletteView extends HookConsumerWidget {
  const PaletteView({
    super.key,
    required this.backgroundImageFile,
    required this.leadingIconButton,
    required this.actionIconButton,
  });

  final File backgroundImageFile;
  final LeadingIconButtonDto leadingIconButton;
  final ActionIconButtonDto actionIconButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paletteKey = ref.watch(paletteKeyProvider);
    final isEditingText = ref.watch(
      paletteStateProvider.select((value) => value.isEditingText),
    );

    final isShowHeader = ref.watch(
      paletteStateProvider.select((value) => value.isShowHeader),
    );

    const editingView = [
      Positioned.fill(
        child: ColoredBox(
          color: Colors.black54,
          child: SizedBox.expand(),
        ),
      ),
      TextEditingView(),
    ];
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: RepaintBoundary(
        key: paletteKey,
        child: Stack(
          children: [
            const BackgroundBlurImageView(),
            const BackgroundImageView(),
            const DecorationWidget(),
            if (isEditingText) ...[
              ...editingView,
            ],
            if (isShowHeader) ...[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  child: HeaderView(
                    actionIconButton: actionIconButton,
                    leadingIconButton: leadingIconButton,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
