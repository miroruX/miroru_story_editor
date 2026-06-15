import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class PaintToolHeaderView extends HookWidget {
  const PaintToolHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    final isNotPaintingLine = useValueListenable(
      controller.paintLines,
    ).isNotEmpty;
    final paintPalette = useValueListenable(controller.paintPalette);
    final selectedBrushType = paintPalette.brushType;
    final selectedColor = paintPalette.color;

    // themeMode が切り替わったらペイントテーマを再評価する
    useValueListenable(controller.themeMode);
    final editingTheme = controller.paintingTheme;

    return Theme(
      data: editingTheme,
      child: Row(
        children: [
          if (isNotPaintingLine) ...[
            TextButton(
              onPressed: () {
                Vibration.call();
                controller.deleteLine();
              },
              child: Text(context.l10n.undo),
            ),
          ],
          const Spacer(flex: 4),
          IconButton(
            onPressed: () {
              Vibration.call();
              controller.changeBrushType(BrushType.pen);
            },
            isSelected: selectedBrushType == BrushType.pen,
            icon: const FaIcon(FontAwesomeIcons.penClip),
            selectedIcon: FaIcon(
              FontAwesomeIcons.penClip,
              color: selectedColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Vibration.call();
              controller.changeBrushType(BrushType.marker);
            },
            isSelected: selectedBrushType == BrushType.marker,
            icon: const FaIcon(FontAwesomeIcons.highlighter),
            selectedIcon: FaIcon(
              FontAwesomeIcons.highlighter,
              color: selectedColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Vibration.call();
              controller.changeBrushType(BrushType.neon);
            },
            isSelected: selectedBrushType == BrushType.neon,
            icon: const FaIcon(FontAwesomeIcons.wandMagicSparkles),
            selectedIcon: FaIcon(
              FontAwesomeIcons.wandMagicSparkles,
              color: selectedColor,
            ),
          ),
          TextButton(
            onPressed: () {
              Vibration.call();
              controller.changePainting(false);
            },
            child: Text(context.l10n.save),
          ),
        ],
      ),
    );
  }
}
