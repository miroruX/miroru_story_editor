import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_back_confirm_dto.freezed.dart';

@freezed
class BackConfirmDto with _$BackConfirmDto {
  const factory BackConfirmDto({
    @Default('メディアを破棄しますか？') String? title,
    @Default(TextStyle(fontSize: 16)) TextStyle? titleStyle,
    @Default('このまま戻ると、変更内容が全て失われます。') String? message,
    @Default(TextStyle(fontSize: 12)) TextStyle? messageStyle,
    @Default('破棄') String? destruction,
    @Default(TextStyle(fontSize: 12, color: Colors.red))
    TextStyle? destructionStyle,
    @Default(true) bool? isShowDraft,
    @Default('下書き保存') String? draft,
    @Default(TextStyle(fontSize: 12)) TextStyle? draftStyle,
    @Default('キャンセル') String? cancel,
    @Default(TextStyle(fontSize: 12)) TextStyle? cancelStyle,
  }) = _BackConfirmDto;
  const BackConfirmDto._();
}
