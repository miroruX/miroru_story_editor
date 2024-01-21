import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ionicons/ionicons.dart';

part 'leading_icon_button_dto.freezed.dart';

@freezed
class LeadingIconButtonDto with _$LeadingIconButtonDto {
  const factory LeadingIconButtonDto({
    ButtonStyle? style,
    @Default(Ionicons.close) IconData? back,
  }) = _LeadingIconButtonDto;
  const LeadingIconButtonDto._();
}
