import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:miroru_story_editor/presentation/widgets/decoration/common/render_item_widget.dart';

class DecorationWidget extends HookWidget {
  const DecorationWidget({
    super.key,
    required this.paletteReducer,
  });

  final Store<PaletteState, PaletteAction> paletteReducer;

  @override
  Widget build(BuildContext context) {
    final renderItems = paletteReducer.state.renderItemsWithoutBackgroundImage;
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return SizedBox(
          width: constraints.biggest.width,
          height: constraints.biggest.height,
          child: Stack(
            children: renderItems.map(
              (e) {
                return RenderItemWidget(
                  item: e,
                  onRenderChange: (matrix) {
                    paletteReducer.dispatch(
                      MoveRenderItem(
                        e.copyWith(
                          transform: matrix,
                        ),
                      ),
                    );
                  },
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
