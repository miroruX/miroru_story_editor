import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/decoration/decoration_palette/decoration_palette.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/use_cases/palette/palette_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'decoration_palette_state.g.dart';

@Riverpod(keepAlive: true)
class DecorationPaletteState extends _$DecorationPaletteState {
  @override
  DecorationPalette build() {
    return DecorationPalette(
      historyRenderItems: [
        [
          RenderItem<DecorationBackgroundImage>(
            transform: Matrix4.identity(),
            data: const DecorationBackgroundImage(),
            uuid: 'init-background-image',
            order: 0,
          ),
        ],
      ],
    );
  }

  PaletteState get _paletteState => ref.read(paletteStateProvider.notifier);

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
    );

    _paletteState.changeEditingText(false);
  }

  /// DecorationItemの更新
  void updateRenderItem(RenderItem<DecorationItem> renderItem) {
    final currentItems = state.historyRenderItems[state.currentHistoryIndex];
    state = state.copyWith(
      historyRenderItems: [
        currentItems
            .map((item) => item.uuid == renderItem.uuid ? renderItem : item)
            .toList(),
        ...state.historyRenderItems,
      ],
      currentHistoryIndex: 0,
    );

    _paletteState.changeEditingText(false);
  }

  /// 背景画像の移動
  void moveBackgroundImage({
    required Matrix4 transform,
    required String? uuid,
  }) {
    // 現在の履歴からアイテムを更新（copyWithで型を保持）
    final currentItems = state.historyRenderItems[state.currentHistoryIndex];
    final updatedRenderItems = currentItems.map((item) {
      if (item.uuid == uuid) {
        return item.copyWith(transform: transform);
      }
      return item;
    }).toList();

    if (state.isShowingHistory) {
      // 履歴を表示中の場合は、現在位置以降の履歴を保持
      state = state.copyWith(
        historyRenderItems: [
          updatedRenderItems,
          ...state.historyRenderItems.sublist(state.currentHistoryIndex),
        ],
        currentHistoryIndex: 0,
      );
    } else {
      // 通常時は新しい履歴を先頭に追加
      state = state.copyWith(
        historyRenderItems: [
          updatedRenderItems,
          ...state.historyRenderItems,
        ],
        currentHistoryIndex: 0,
      );
    }
    _paletteState.changeMovingItem(false);
  }

  /// RenderItemの移動
  void moveRenderItem(RenderItem<DecorationItem> renderItem) {
    final currentItems = state.historyRenderItems[state.currentHistoryIndex];
    final updatedRenderItems = currentItems
        .map((item) => item.uuid == renderItem.uuid ? renderItem : item)
        .toList();

    if (state.isShowingHistory) {
      state = state.copyWith(
        historyRenderItems: [
          updatedRenderItems,
          ...state.historyRenderItems.sublist(state.currentHistoryIndex),
        ],
        currentHistoryIndex: 0,
      );
    } else {
      state = state.copyWith(
        historyRenderItems: [
          updatedRenderItems,
          ...state.historyRenderItems,
        ],
        currentHistoryIndex: 0,
      );
    }
    _paletteState.changeMovingItem(false);
  }

  void removeRenderItem(String renderItemId) {
    final currentItems = state.historyRenderItems[state.currentHistoryIndex];
    state = state.copyWith(
      historyRenderItems: [
        currentItems.where((item) => item.uuid != renderItemId).toList(),
        ...state.historyRenderItems,
      ],
      currentHistoryIndex: 0,
    );
    _paletteState.changeMovingItem(false);
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

  void changeDeletePosition(String uuid, bool isDeletePosition) {
    final currentItems = state.historyRenderItems[state.currentHistoryIndex];
    state = state.copyWith(
      historyRenderItems: [
        currentItems
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
