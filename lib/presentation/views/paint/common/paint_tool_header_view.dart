import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:miroru_story_editor/model/use_cases/paint/paint_lines_state.dart';
import 'package:miroru_story_editor/model/use_cases/paint/paint_palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:miroru_story_editor/presentation/res/editing_text_theme.dart';

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

    return Theme(
      data: editingTextTheme(),
      child: Row(
        children: [
          if (isNotPaintingLine) ...[
            TextButton(
              onPressed: () {
                ref.read(paintLinesStateProvider.notifier).delete();
              },
              child: const Text('元に戻す'),
            ),
          ],
          const Spacer(flex: 4),
          IconButton(
            onPressed: () {
              ref.read(paintPaletteStateProvider.notifier).changeBrushType(
                    BrushType.pen,
                  );
            },
            style: selectedBrushType == BrushType.pen
                ? ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  )
                : null,
            icon: const Icon(FontAwesomeIcons.penClip),
          ),
          IconButton(
            onPressed: () {
              ref.read(paintPaletteStateProvider.notifier).changeBrushType(
                    BrushType.marker,
                  );
            },
            icon: const Icon(FontAwesomeIcons.highlighter),
          ),
          IconButton(
            onPressed: () {
              ref.read(paintPaletteStateProvider.notifier).changeBrushType(
                    BrushType.neon,
                  );
            },
            icon: const Icon(FontAwesomeIcons.wandMagicSparkles),
          ),
          TextButton(
            onPressed: () {
              ref.read(paletteStateProvider.notifier).changePainting(false);
            },
            child: const Text('完了'),
          ),
        ],
      ),
    );
  }
}
