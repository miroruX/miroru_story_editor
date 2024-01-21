import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';

part 'palette_state.freezed.dart';

@freezed
class PaletteState with _$PaletteState {
  const factory PaletteState({
    required List<List<RenderItem>> historyRenderItems,
    required bool isEditingText,
    required int currentHistoryIndex,
  }) = _PaletteState;
  const PaletteState._();

  List<RenderItem> get latestRenderItems {
    if (historyRenderItems.isEmpty) {
      throw Exception('backgroundImage is not found.');
    }
    return historyRenderItems.first;
  }

  List<RenderItem> get showRenderItems {
    if (historyRenderItems.isEmpty) {
      throw Exception('backgroundImage is not found.');
    }
    return historyRenderItems[currentHistoryIndex];
  }

  bool get canBack {
    if (historyRenderItems.isEmpty) {
      throw Exception('backgroundImage is not found.');
    }
    return currentHistoryIndex < historyRenderItems.length - 1;
  }

  bool get canNext {
    if (historyRenderItems.isEmpty) {
      throw Exception('backgroundImage is not found.');
    }
    return currentHistoryIndex > 0;
  }

  bool get isShowingHistory => currentHistoryIndex != 0;
}
