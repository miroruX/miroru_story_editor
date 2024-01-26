import 'package:miroru_story_editor/model/entities/palette/palette.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'palette_state.g.dart';

@Riverpod(keepAlive: true)
class PaletteState extends _$PaletteState {
  @override
  Palette build() {
    return const Palette();
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

  void changePainting(bool isPainting) {
    state = state.copyWith(
      isPainting: isPainting,
    );
  }
}
