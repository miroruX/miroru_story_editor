import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/emoji/decoration_emoji.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/enums/menu_result_type.dart';
import 'package:miroru_story_editor/model/use_cases/image/save_image.dart';
import 'package:miroru_story_editor/presentation/bottom_sheets/show_select_emoji_sheet.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_global_key.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class HeaderView extends HookWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    final iconButtonKey = useGlobalKey();
    final decorationPalette = useValueListenable(controller.decorationPalette);
    final canBack = decorationPalette.canBack;
    final canNext = decorationPalette.canNext;

    return Row(
      children: [
        IconButton(
          onPressed: () {
            Vibration.call();
            Navigator.of(context).pop();
          },
          icon: const FaIcon(FontAwesomeIcons.xmark),
        ),
        const SizedBox(width: 12),
        IconButton(
          onPressed: canBack
              ? () {
                  Vibration.call();
                  controller.backHistory();
                }
              : null,
          // style: actionIconButton.style,
          icon: const FaIcon(FontAwesomeIcons.arrowLeft),
        ),
        IconButton(
          onPressed: canNext
              ? () {
                  Vibration.call();
                  controller.nextHistory();
                }
              : null,
          // style: actionIconButton.style,
          icon: const FaIcon(FontAwesomeIcons.arrowRight),
        ),
        const Spacer(),
        IconButton(
          onPressed: () async {
            await Vibration.call();
            if (!context.mounted) {
              return;
            }
            final emoji = await showSelectEmojiSheet(context);

            if (emoji == null) {
              return;
            }

            controller.addRenderItem(
              RenderItem<DecorationEmoji>(
                transform: Matrix4.identity(),
                data: DecorationEmoji(emoji: emoji),
                uuid: null,
                order: 0,
              ),
            );
          },
          icon: const AnimatedEmoji(AnimatedEmojis.smile, size: 25),
        ),
        IconButton(
          onPressed: () {
            Vibration.call();
            controller.changeEditingText(true);
          },
          icon: const FaIcon(FontAwesomeIcons.a),
        ),
        IconButton(
          key: iconButtonKey,
          onPressed: () async {
            await Vibration.call();
            if (!context.mounted) {
              return;
            }
            final res = await _showPopupMenu(context, iconButtonKey);
            try {
              if (res == MenuFeatureType.paint) {
                controller.changePainting(true);
              } else if (res == MenuFeatureType.save) {
                await Vibration.call();
                final data = await controller.exportImage();
                if (!context.mounted) {
                  return;
                }
                if (data == null) {
                  context.showSnackBar(context.l10n.export_failure);
                  return;
                }
                // 端末に画像を保存
                await saveImage(data);
                if (!context.mounted) {
                  return;
                }
                context.showSnackBar(context.l10n.export_success);
              }
            } on Exception catch (e) {
              if (context.mounted) {
                context.showSnackBar(e.toString());
              }
            }
          },
          icon: const FaIcon(FontAwesomeIcons.ellipsis),
        ),
      ],
    );
  }

  Future<MenuFeatureType?> _showPopupMenu(
    BuildContext context,
    GlobalKey iconButtonKey,
  ) {
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
      PopupMenuItem<MenuFeatureType>(
        value: MenuFeatureType.paint,
        height: 40,
        child: Row(
          children: [
            Text(context.l10n.draw),
            const Spacer(),
            const FaIcon(FontAwesomeIcons.palette),
          ],
        ),
      ),
      PopupMenuItem<MenuFeatureType>(
        value: MenuFeatureType.save,
        height: 40,
        child: Row(
          children: [
            Text(context.l10n.save),
            const Spacer(),
            const FaIcon(FontAwesomeIcons.download),
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
