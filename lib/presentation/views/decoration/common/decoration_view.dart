import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:miroru_story_editor/presentation/custom_hooks/use_debounce.dart';
import 'package:miroru_story_editor/presentation/widgets/custom/center_line_widget.dart';
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

    final isMoving = paletteReducer.state.isMovingItem;

    final pointer = useState<Offset>(Offset.zero);

    final debounce = useDebounce<VoidCallback>(
      debounceDelay: 100,
      callback: (VoidCallback func) {
        func();
      },
    );

    return LayoutBuilder(
      builder: (ctx, constraints) {
        return SizedBox(
          width: constraints.biggest.width,
          height: constraints.biggest.height,
          child: Stack(
            children: [
              /// 描画するアイテム
              ...renderItems.map(
                (e) {
                  return RenderItemWidget(
                    item: e,
                    onPointerDown: (event) =>
                        _onPointDown(event, paletteReducer),
                    onPointerUp: (event, matrix) => debounce.onChanged(() {
                      _onPointUp(event, paletteReducer, e, matrix, pointer);
                    }),
                    onPointerMove: (event) => _onPointMove(event, pointer),
                  );
                },
              ),

              /// 中心線(Assist Center Line)
              if (_showCenterLine(pointer, constraints) && isMoving) ...[
                CenterLineWidget(
                  height: constraints.biggest.height,
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  //
  void _onPointDown(
    PointerDownEvent _,
    Store<PaletteState, PaletteAction> paletteReducer,
  ) {
    paletteReducer.dispatch(
      ChangeMovingItem(true),
    );
  }

  void _onPointUp(
    PointerUpEvent event,
    Store<PaletteState, PaletteAction> paletteReducer,
    RenderItem<DecorationItem> e,
    Matrix4 matrix,
    ValueNotifier<Offset> pointer,
  ) {
    paletteReducer
      ..dispatch(
        ChangeMovingItem(false),
      )
      ..dispatch(
        MoveRenderItem(
          e.copyWith(
            transform: matrix,
          ),
        ),
      );
    pointer.value = Offset.zero;
  }

  void _onPointMove(PointerMoveEvent event, ValueNotifier<Offset> pointer) {
    pointer.value = event.localPosition;
  }

  bool _showCenterLine(
    ValueNotifier<Offset> pointer,
    BoxConstraints constraints,
  ) {
    return (pointer.value.dy > (constraints.biggest.height / 2 - 10)) &&
        (pointer.value.dy < (constraints.biggest.height / 2 + 10));
  }
}
