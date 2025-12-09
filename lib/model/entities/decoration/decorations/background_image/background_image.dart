import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/decoration_item.dart';

part 'background_image.freezed.dart';

@freezed
abstract class DecorationBackgroundImage
    with _$DecorationBackgroundImage
    implements DecorationItem {
  const factory DecorationBackgroundImage({
    File? backgroundImageFile,
  }) = _DecorationBackgroundImage;
  const DecorationBackgroundImage._();
}
