import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/decoration/decoration_palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/theme/theme_data/editor_theme_data.dart';
import 'package:miroru_story_editor/presentation/views/palette/footer_view.dart';
import 'package:miroru_story_editor/presentation/views/palette/palette_view.dart';
import 'package:uuid/uuid.dart';

class PalettePage extends HookConsumerWidget {
  const PalettePage({
    super.key,
    required this.backgroundImageFile,
  });
  final File backgroundImageFile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = ref.watch(editorThemeDataProvider);
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
    return PopScope(
      canPop: false,
      child: Theme(
        data: themeData,
        child: Scaffold(
          body: SafeArea(
            child: PaletteView(
              backgroundImageFile: backgroundImageFile,
            ),
          ),
          bottomNavigationBar: const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(6),
              child: FooterView(),
            ),
          ),
        ),
      ),
    );
  }
}
