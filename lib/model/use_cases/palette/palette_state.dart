import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/palette/palette.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'palette_state.g.dart';

@Riverpod(keepAlive: true)
class PaletteState extends _$PaletteState {
  @override
  Palette build() {
    return Palette(
      historyRenderItems: [
        [
          RenderItem<DecorationBackgroundImage>(
            transform: Matrix4.identity(),
            data: const DecorationBackgroundImage(),
            uuid: 'init-background-image',
            order: 0,
          ),
        ]
      ],
    );
  }

  void initHistoryRenderItem(
    List<List<RenderItem<DecorationItem>>> initHistoryRenderItem,
  ) {
    state = state.copyWith(
      historyRenderItems: initHistoryRenderItem,
    );
  }

  void addRenderItem(RenderItem<DecorationItem> renderItem) {
    final uuid = const Uuid().v4();
    final newRenderItem = renderItem.copyWith(uuid: uuid);
    state = state.copyWith(
      historyRenderItems: [
        [
          ...state.historyRenderItems[state.currentHistoryIndex],
          newRenderItem,
        ],
        ...state.historyRenderItems,
      ],
      currentHistoryIndex: 0,
      isEditingText: false,
    );
  }

  void moveRenderItem(RenderItem<DecorationItem> renderItem) {
    if (state.isShowingHistory) {
      final updatedRenderItems = state.renderItems
          .map(
            (item) => item.uuid == renderItem.uuid ? renderItem : item,
          )
          .toList();

      state = state.copyWith(
        historyRenderItems: [
          updatedRenderItems,
          ...state.historyRenderItems.sublist(
            state.currentHistoryIndex,
            state.historyRenderItems.length,
          ),
        ],
        currentHistoryIndex: 0,
        isMovingItem: false,
      );
    } else {
      state = state.copyWith(
        historyRenderItems: [
          state.historyRenderItems[state.currentHistoryIndex]
              .map(
                (item) => item.uuid == renderItem.uuid ? renderItem : item,
              )
              .toList(),
          ...state.historyRenderItems,
        ],
        currentHistoryIndex: 0,
        isMovingItem: false,
      );
    }
  }

  void removeRenderItem(String renderItemId) {
    state = state.copyWith(
      historyRenderItems: [
        state.renderItems.where((item) => item.uuid != renderItemId).toList(),
        ...state.historyRenderItems,
      ],
      currentHistoryIndex: 0,
      isMovingItem: false,
    );
  }

  void backHistory() {
    if (state.canBack) {
      state = state.copyWith(
        currentHistoryIndex: state.currentHistoryIndex + 1,
      );
    }
  }

  void nextHistory() {
    if (state.canNext) {
      state = state.copyWith(
        currentHistoryIndex: state.currentHistoryIndex - 1,
      );
    }
  }

  void changeEditingText(bool isEditingText) {
    state = state.copyWith(
      isEditingText: isEditingText,
    );
  }

  void changeMovingItem(bool isMovingItem) {
    state = state.copyWith(
      isMovingItem: isMovingItem,
    );
  }

  void changeDeletePosition(String uuid, bool isDeletePosition) {
    state = state.copyWith(
      historyRenderItems: [
        state.renderItems
            .map(
              (item) => item.uuid == uuid
                  ? item.copyWith(deletePosition: isDeletePosition)
                  : item,
            )
            .toList(),
        ...state.historyRenderItems,
      ],
      currentHistoryIndex: 0,
    );
  }
}
