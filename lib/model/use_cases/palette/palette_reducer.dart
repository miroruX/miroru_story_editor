import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:uuid/uuid.dart';

typedef StoryEditorReducer = Reducer<PaletteState, PaletteAction>;

StoryEditorReducer get reducer => (PaletteState state, PaletteAction action) {
      if (action is ChangeEditText) {
        return state.copyWith(
          isEditingText: !state.isEditingText,
        );
      } else if (action is ChangeMovingItem) {
        return state.copyWith(
          isMovingItem: !state.isMovingItem,
        );
      } else if (action is AddRenderItem) {
        final uuid = const Uuid().v4();
        final newRenderItem = action.renderItem.copyWith(uuid: uuid);
        return state.copyWith(
          historyRenderItems: [
            [newRenderItem],
            ...state.historyRenderItems,
          ],
          currentHistoryIndex: 0,
        );
      } else if (action is MoveRenderItem) {
        if (state.isShowingHistory) {
          // 履歴の表示中にアイテムを移動する場合
          final updatedRenderItems = state.renderItems
              .map(
                (item) => item.uuid == action.renderItem.uuid
                    ? action.renderItem
                    : item,
              )
              .toList();

          return state.copyWith(
            historyRenderItems: [
              updatedRenderItems,
              ...state.historyRenderItems.sublist(
                state.currentHistoryIndex,
                state.historyRenderItems.length,
              ),
            ],
            currentHistoryIndex: 0, // 最新の状態に戻る
          );
        } else {
          return state.copyWith(
            historyRenderItems: [
              state.historyRenderItems[state.currentHistoryIndex]
                  .map(
                    (item) => item.uuid == action.renderItem.uuid
                        ? action.renderItem
                        : item,
                  )
                  .toList(),
              ...state.historyRenderItems,
            ],
            currentHistoryIndex: 0,
          );
        }
      } else if (action is RemoveRenderItem) {
        return state.copyWith(
          historyRenderItems: [
            state.renderItems
                .where((item) => item.uuid != action.renderItemId)
                .toList(),
            ...state.historyRenderItems,
          ],
          currentHistoryIndex: 0,
        );
      } else if (action is BackHistory) {
        if (state.canBack) {
          return state.copyWith(
            currentHistoryIndex: state.currentHistoryIndex + 1,
          );
        }
      } else if (action is ForwardHistory) {
        if (state.canNext) {
          return state.copyWith(
            currentHistoryIndex: state.currentHistoryIndex - 1,
          );
        }
      } else if (action is ResetAction) {
        return PaletteState(
          historyRenderItems: [state.historyRenderItems.first],
        );
      }
      return state;
    };
