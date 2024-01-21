import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ionicons/ionicons.dart';

part 'action_icon_button_dto.freezed.dart';

@freezed
class ActionIconButtonDto with _$ActionIconButtonDto {
  const factory ActionIconButtonDto({
    ButtonStyle? style,
    @Default(Ionicons.ellipsis_horizontal) IconData? ellipsis,
    @Default(Ionicons.language) IconData? font,
  }) = _ActionIconButtonDto;
  const ActionIconButtonDto._();
}
