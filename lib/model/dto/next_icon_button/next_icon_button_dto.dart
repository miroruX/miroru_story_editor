import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ionicons/ionicons.dart';

part 'next_icon_button_dto.freezed.dart';

@freezed
class NextIconButtonDto with _$NextIconButtonDto {
  const factory NextIconButtonDto({
    ButtonStyle? style,
    @Default(Icon(Ionicons.arrow_forward)) Widget icon,
  }) = _StoryIconStyleDto;
  const NextIconButtonDto._();
}
