import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/decoration_item.dart';

part 'decoration_text.freezed.dart';

@freezed
class DecorationText with _$DecorationText implements DecorationItem {
  const factory DecorationText({
    String? text,
    double? fontSize,
    String? fontFamily,
    String? colorCode,
    String? backgroundColorCode,
    String? textAlign,
  }) = _DecorationText;
  const DecorationText._();
}
