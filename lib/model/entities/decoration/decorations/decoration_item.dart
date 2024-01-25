import 'package:freezed_annotation/freezed_annotation.dart';

part 'decoration_item.freezed.dart';
// part 'decoration_item.g.dart'; // JSONシリアライズが必要な場合

@freezed
abstract class DecorationItem with _$DecorationItem {
  const factory DecorationItem() = _DecorationItem;
  // 他のコンストラクタがあればここに追加
}
