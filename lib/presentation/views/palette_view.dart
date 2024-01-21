import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_reducer.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_global_key.dart';
import 'package:miroru_story_editor/presentation/views/background_image_view.dart';
import 'package:miroru_story_editor/presentation/views/header_view.dart';

class PaletteView extends HookWidget {
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
  Widget build(BuildContext context) {
    final headerKey = useGlobalKey();

    final paletteReducer = useReducer<PaletteState, PaletteAction>(
      reducer,
      initialState: PaletteState(
        historyRenderItems: [
          [
            RenderItem<DecorationBackgroundImage>(
              transform: Matrix4.identity(),
              data: DecorationBackgroundImage(
                backgroundImageFile: backgroundImageFile,
              ),
              order: 0,
            ),
          ]
        ],
        isEditingText: false,
        currentHistoryIndex: 0,
      ),
      initialAction: ResetAction(),
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ColoredBox(
        color: Colors.white,
        child: Stack(
          children: [
            if (paletteReducer.state.showRenderItems.isNotEmpty) ...[
              BackgroundImageView(
                onRenderChange: (m, t, s, r) {
                  // 先に変更の通知を行う
                  if (!paletteReducer.state.isShowingHistory) {
                    context.showSnackBar('変更を保存しました。');
                  }
                  paletteReducer.dispatch(
                    MoveRenderItem(
                      RenderItem<DecorationBackgroundImage>(
                        transform: m,
                        data: DecorationBackgroundImage(
                          backgroundImageFile: backgroundImageFile,
                        ),
                        order: 0,
                      ),
                    ),
                  );
                },
                paletteState: paletteReducer.state,
              ),
            ],
            Align(
              key: headerKey,
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 6,
                ),
                child: HeaderView(
                  actionIconButton: actionIconButton,
                  leadingIconButton: leadingIconButton,
                  paletteReducer: paletteReducer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
