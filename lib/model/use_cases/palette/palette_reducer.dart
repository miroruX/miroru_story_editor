import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/entities/palette_state/palette_state.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_actions.dart';
import 'package:uuid/uuid.dart';

typedef StoryEditorReducer = Reducer<PaletteState, PaletteAction>;

StoryEditorReducer get reducer => (PaletteState state, PaletteAction action) {
      if (action is IsEditText) {
        return state.copyWith(
          isEditingText: !state.isEditingText,
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
          final updatedRenderItems = state.showRenderItems
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
          // 履歴を表示していない場合の通常の処理
          return state.copyWith(
            historyRenderItems: [
              state.latestRenderItems
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
            state.latestRenderItems
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
          historyRenderItems: [state.latestRenderItems],
          isEditingText: false,
          currentHistoryIndex: 0,
        );
      }

      return state;
    };
