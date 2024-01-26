import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_key.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/theme/editor_theme_mode.dart';
import 'package:miroru_story_editor/presentation/views/background_image/background_image_blur_view.dart';
import 'package:miroru_story_editor/presentation/views/background_image/background_image_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/common/decoration_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/common/text_editing_view.dart';
import 'package:miroru_story_editor/presentation/views/paint/common/paint_palette_view.dart';
import 'package:miroru_story_editor/presentation/views/palette/header_view.dart';

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
    final palette = ref.watch(paletteStateProvider);
    final themeMode = ref.watch(editorThemeModeProvider);

    // 気持ち程度のパフォーマンス向上
    final editingView = [
      Positioned.fill(
        child: ColoredBox(
          color: themeMode == ThemeMode.dark ? Colors.black54 : Colors.white24,
          child: const SizedBox.expand(),
        ),
      ),
      const TextEditingView(),
    ];

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: RepaintBoundary(
        key: paletteKey,
        child: Stack(
          children: [
            const BackgroundBlurImageView(),
            const BackgroundImageView(),
            const PaintPaletteView(),
            const DecorationWidget(),
            if (palette.isEditingText) ...[
              ...editingView,
            ],
            if (palette.isShowHeader) ...[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(6),
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
