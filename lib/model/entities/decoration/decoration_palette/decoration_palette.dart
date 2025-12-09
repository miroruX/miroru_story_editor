import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';

part 'decoration_palette.freezed.dart';

@freezed
abstract class DecorationPalette with _$DecorationPalette {
  const factory DecorationPalette({
    required List<List<RenderItem<DecorationItem>>> historyRenderItems,
    @Default(0) int currentHistoryIndex,
  }) = _DecorationPalette;
  const DecorationPalette._();

  /// 背景画像を含む全てのレンダリングされるアイテム
  List<RenderItem> get renderItems {
    if (historyRenderItems.isEmpty) {
      throw Exception('backgroundImage is not found.');
    }
    return List<RenderItem>.from(
      historyRenderItems[currentHistoryIndex],
    )..sort((a, b) => a.order.compareTo(b.order));
  }

  /// 背景画像
  RenderItem<DecorationBackgroundImage> get backgroundImage {
    if (historyRenderItems.isEmpty) {
      throw Exception(
        'backgroundImage is not found: historyRenderItems is empty.',
      );
    }

    final backgroundImageItems = historyRenderItems[currentHistoryIndex]
        .whereType<RenderItem<DecorationBackgroundImage>>()
        .toList();

    if (backgroundImageItems.isNotEmpty) {
      return backgroundImageItems.first;
    } else {
      throw Exception(
        'backgroundImage is not found: No backgroundImage in the latest history.',
      );
    }
  }

  /// 背景画像を除く全てのレンダリングされるアイテム
  List<RenderItem> get renderItemsWithoutBackgroundImage {
    if (historyRenderItems.isEmpty) {
      throw Exception('backgroundImage is not found.');
    }
    return List<RenderItem>.from(
      historyRenderItems[currentHistoryIndex].skip(1),
    )..sort((a, b) => a.order.compareTo(b.order));
  }

  /// 過去に戻れるかどうか
  bool get canBack {
    if (historyRenderItems.isEmpty) {
      throw Exception('backgroundImage is not found.');
    }
    return currentHistoryIndex < historyRenderItems.length - 1;
  }

  /// 未来に進めるかどうか
  bool get canNext {
    if (historyRenderItems.isEmpty) {
      throw Exception('backgroundImage is not found.');
    }
    return currentHistoryIndex > 0;
  }

  /// 履歴を表示しているかどうか
  bool get isShowingHistory => currentHistoryIndex != 0;
}
