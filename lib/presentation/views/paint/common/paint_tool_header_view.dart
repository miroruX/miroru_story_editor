import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:miroru_story_editor/model/use_cases/paint/paint_lines_state.dart';
import 'package:miroru_story_editor/model/use_cases/paint/paint_palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/theme/theme_data/painting_theme_dart.dart';
import 'package:miroru_story_editor/util/vibration.dart';

class PaintToolHeaderView extends HookConsumerWidget {
  const PaintToolHeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isNotPaintingLine = ref.watch(paintLinesStateProvider).isNotEmpty;
    final selectedBrushType = ref.watch(
      paintPaletteStateProvider.select((value) => value.brushType),
    );

    final selectedColor = ref.watch(
      paintPaletteStateProvider.select((value) => value.color),
    );

    final editingTheme = ref.watch(paintingThemeDataProvider);

    return Theme(
      data: editingTheme,
      child: Row(
        children: [
          if (isNotPaintingLine) ...[
            TextButton(
              onPressed: () {
                Vibration.call();
                ref.read(paintLinesStateProvider.notifier).delete();
              },
              child: const Text('元に戻す'),
            ),
          ],
          const Spacer(flex: 4),
          IconButton(
            onPressed: () {
              Vibration.call();
              ref.read(paintPaletteStateProvider.notifier).changeBrushType(
                    BrushType.pen,
                  );
            },
            isSelected: selectedBrushType == BrushType.pen,
            icon: const Icon(FontAwesomeIcons.penClip),
            selectedIcon: Icon(
              FontAwesomeIcons.penClip,
              color: selectedColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Vibration.call();
              ref.read(paintPaletteStateProvider.notifier).changeBrushType(
                    BrushType.marker,
                  );
            },
            isSelected: selectedBrushType == BrushType.marker,
            icon: const Icon(FontAwesomeIcons.highlighter),
            selectedIcon: Icon(
              FontAwesomeIcons.highlighter,
              color: selectedColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Vibration.call();
              ref.read(paintPaletteStateProvider.notifier).changeBrushType(
                    BrushType.neon,
                  );
            },
            isSelected: selectedBrushType == BrushType.neon,
            icon: const Icon(FontAwesomeIcons.wandMagicSparkles),
            selectedIcon: Icon(
              FontAwesomeIcons.wandMagicSparkles,
              color: selectedColor,
            ),
          ),
          TextButton(
            onPressed: () {
              Vibration.call();
              ref.read(paletteStateProvider.notifier).changePainting(false);
            },
            child: const Text('完了'),
          ),
        ],
      ),
    );
  }
}
