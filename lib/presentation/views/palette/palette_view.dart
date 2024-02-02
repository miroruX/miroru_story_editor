import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_key.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/editor_theme_mode.dart';
import 'package:miroru_story_editor/presentation/views/background_image/background_image_blur_view.dart';
import 'package:miroru_story_editor/presentation/views/background_image/background_image_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/common/decoration_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/common/text_editing_view.dart';
import 'package:miroru_story_editor/presentation/views/paint/common/paint_palette_edit_view.dart';
import 'package:miroru_story_editor/presentation/views/paint/common/paint_palette_view.dart';
import 'package:miroru_story_editor/presentation/views/palette/header_view.dart';

class PaletteView extends HookConsumerWidget {
  const PaletteView({
    super.key,
    required this.backgroundImageFile,
  });

  final File backgroundImageFile;

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
      child: Stack(
        children: [
          // ここがexport imageの対象
          RepaintBoundary(
            key: paletteKey,
            child: const Stack(
              children: [
                BackgroundBlurImageView(),
                BackgroundImageView(),
                PaintPaletteView(),
                DecorationWidget(),
              ],
            ),
          ),
          // ここから下はexport imageの対象外
          if (palette.isPainting) ...[
            const PaintPaletteEditView(),
          ],
          if (palette.isEditingText) ...[
            ...editingView,
          ],
          if (palette.isShowHeader) ...[
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(6),
                child: HeaderView(),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
