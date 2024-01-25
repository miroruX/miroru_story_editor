import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/decoration_item.dart';

part 'decoration_emoji.freezed.dart';

@freezed
class DecorationEmoji with _$DecorationEmoji implements DecorationItem {
  const factory DecorationEmoji({
    String? emoji,
  }) = _DecorationEmoji;
  const DecorationEmoji._();
}
