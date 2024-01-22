import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_reducer.dart';
import 'package:miroru_story_editor/presentation/views/background_image/background_image_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/common/decoration_view.dart';
import 'package:miroru_story_editor/presentation/views/decoration/common/text_editing_view.dart';
import 'package:miroru_story_editor/presentation/views/header_view.dart';
import 'package:uuid/uuid.dart';

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
              uuid: const Uuid().v4(),
              order: 0,
            ),
          ]
        ],
      ),
      initialAction: ResetAction(),
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ColoredBox(
        color: Colors.white,
        child: Stack(
          children: [
            BackgroundImageView(paletteReducer: paletteReducer),
            DecorationWidget(paletteReducer: paletteReducer),
            if (paletteReducer.state.isEditingText) ...[
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              TextEditingView(
                paletteReducer: paletteReducer,
              ),
            ],
            if (paletteReducer.state.isShowHeader) ...[
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
                    paletteReducer: paletteReducer,
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
