import 'package:freezed_annotation/freezed_annotation.dart';

part 'palette.freezed.dart';

@freezed
class Palette with _$Palette {
  const factory Palette({
    @Default(false) bool isPainting,
    @Default(false) bool isEditingText,
    @Default(false) bool isMovingItem,
  }) = _Palette;
  const Palette._();

  /// ヘッダーを表示しているかどうか
  bool get isShowHeader => !isEditingText && !isMovingItem && !isPainting;

  bool get isShowExportButton => !isEditingText && !isMovingItem && !isPainting;
}
