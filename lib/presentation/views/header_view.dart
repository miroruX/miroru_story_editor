import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';
import 'package:miroru_story_editor/model/dto/action_icon_button/action_icon_button_dto.dart';
import 'package:miroru_story_editor/model/dto/leading_icon_button/leading_icon_button_dto.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/enums/menu_result_type.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_global_key.dart';

class HeaderView extends HookWidget {
  const HeaderView({
    super.key,
    required this.actionIconButton,
    required this.leadingIconButton,
    required this.paletteReducer,
  });

  final ActionIconButtonDto actionIconButton;
  final LeadingIconButtonDto leadingIconButton;
  final Store<PaletteState, PaletteAction> paletteReducer;

  @override
  Widget build(BuildContext context) {
    final iconButtonKey = useGlobalKey();

    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: leadingIconButton.style,
          icon: Icon(
            leadingIconButton.back,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: paletteReducer.state.canBack
              ? () {
                  paletteReducer.dispatch(BackHistory());
                }
              : null,
          style: actionIconButton.style,
          icon: const Icon(
            Ionicons.arrow_back,
          ),
        ),
        IconButton(
          onPressed: paletteReducer.state.canNext
              ? () {
                  paletteReducer.dispatch(ForwardHistory());
                }
              : null,
          style: actionIconButton.style,
          icon: const Icon(
            Ionicons.arrow_forward,
          ),
        ),
        IconButton(
          onPressed: () {},
          style: actionIconButton.style,
          icon: Icon(
            actionIconButton.font,
          ),
        ),
        IconButton(
          key: iconButtonKey,
          onPressed: () async {
            final res = await _showPopupMenu(context, iconButtonKey);
            if (kDebugMode) {
              print(res);
            }

            // TODO(namba): ここで分岐した処理を作成する.
          },
          style: actionIconButton.style,
          icon: Icon(
            actionIconButton.ellipsis,
          ),
        ),
      ],
    );
  }

  Future<MenuFeatureType?> _showPopupMenu(
    BuildContext context,
    GlobalKey iconButtonKey,
  ) async {
    final renderBox =
        iconButtonKey.currentContext?.findRenderObject() as RenderBox?;
    final offset = renderBox!.localToGlobal(Offset.zero);
    final size = renderBox.size;

    final position = RelativeRect.fromLTRB(
      offset.dx,
      offset.dy + size.height,
      offset.dx,
      offset.dy,
    );

    final items = [
      const PopupMenuItem<MenuFeatureType>(
        value: MenuFeatureType.paint,
        height: 40,
        child: Row(
          children: [
            Text(
              '落書き',
            ),
            Spacer(),
            Icon(
              Ionicons.color_palette_outline,
            ),
          ],
        ),
      ),
      const PopupMenuItem<MenuFeatureType>(
        value: MenuFeatureType.save,
        height: 40,
        child: Row(
          children: [
            Text(
              '保存',
            ),
            Spacer(),
            Icon(Ionicons.download_outline),
          ],
        ),
      ),
    ];

    return showMenu<MenuFeatureType>(
      context: context,
      position: position,
      items: items,
    );
  }
}
