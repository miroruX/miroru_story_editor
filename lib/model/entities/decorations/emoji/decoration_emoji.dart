import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';

part 'decoration_emoji.freezed.dart';

@freezed
class DecorationEmoji with _$DecorationEmoji implements DecorationItem {
  const factory DecorationEmoji({
    String? text,
    double? fontSize,
    String? fontFamily,
    String? colorCode,
    String? backgroundColorCode,
  }) = _DecorationEmoji;
  const DecorationEmoji._();
}
