import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/emoji/decoration_emoji.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/enums/menu_result_type.dart';
import 'package:miroru_story_editor/model/use_cases/decoration/decoration_palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/image/save_image.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/share/export_image.dart';
import 'package:miroru_story_editor/presentation/bottom_sheets/show_select_emoji_sheet.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_global_key.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class HeaderView extends HookConsumerWidget {
  const HeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconButtonKey = useGlobalKey();
    final canBack = ref.watch(
      decorationPaletteStateProvider.select((value) => value.canBack),
    );

    final canNext = ref.watch(
      decorationPaletteStateProvider.select((value) => value.canNext),
    );

    return Row(
      children: [
        IconButton(
          onPressed: () {
            Vibration.call();
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Ionicons.close,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        IconButton(
          onPressed: canBack
              ? () {
                  Vibration.call();
                  ref
                      .read(decorationPaletteStateProvider.notifier)
                      .backHistory();
                }
              : null,
          // style: actionIconButton.style,
          icon: const Icon(
            Ionicons.arrow_back,
          ),
        ),
        IconButton(
          onPressed: canNext
              ? () {
                  Vibration.call();
                  ref
                      .read(decorationPaletteStateProvider.notifier)
                      .nextHistory();
                }
              : null,
          // style: actionIconButton.style,
          icon: const Icon(
            Ionicons.arrow_forward,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () async {
            await Vibration.call();
            final emoji = await showSelectEmojiSheet(
              context,
            );

            if (emoji == null) {
              return;
            }

            ref.read(decorationPaletteStateProvider.notifier).addRenderItem(
                  RenderItem<DecorationEmoji>(
                    transform: Matrix4.identity(),
                    data: DecorationEmoji(
                      emoji: emoji,
                    ),
                    uuid: null,
                    order: 0,
                  ),
                );
          },
          icon: const AnimatedEmoji(
            AnimatedEmojis.smile,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {
            Vibration.call();
            ref.read(paletteStateProvider.notifier).changeEditingText(true);
          },
          icon: const Icon(
            FontAwesomeIcons.a,
          ),
        ),
        IconButton(
          key: iconButtonKey,
          onPressed: () async {
            await Vibration.call();
            final res = await _showPopupMenu(context, iconButtonKey);
            try {
              if (res == MenuFeatureType.paint) {
                ref.read(paletteStateProvider.notifier).changePainting(true);
              } else if (res == MenuFeatureType.save) {
                await Vibration.call();
                final data = await ref.read(exportImageProvider.future);
                if (data == null) {
                  context.showSnackBar(context.l10n.export_failure);
                  return;
                }
                // 端末に画像を保存
                await ref.read(saveImageProvider(imageBytes: data).future);
                context.showSnackBar(context.l10n.export_success);
              }
            } on Exception catch (e) {
              context.showSnackBar(e.toString());
            }
          },
          icon: const Icon(
            Ionicons.ellipsis_horizontal,
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
      PopupMenuItem<MenuFeatureType>(
        value: MenuFeatureType.paint,
        height: 40,
        child: Row(
          children: [
            Text(context.l10n.draw),
            const Spacer(),
            const Icon(
              Ionicons.color_palette_outline,
            ),
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
            const Icon(Ionicons.download_outline),
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
