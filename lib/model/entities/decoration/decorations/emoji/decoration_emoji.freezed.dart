// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoration_emoji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DecorationEmoji {
  String? get emoji => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DecorationEmojiCopyWith<DecorationEmoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecorationEmojiCopyWith<$Res> {
  factory $DecorationEmojiCopyWith(
          DecorationEmoji value, $Res Function(DecorationEmoji) then) =
      _$DecorationEmojiCopyWithImpl<$Res, DecorationEmoji>;
  @useResult
  $Res call({String? emoji});
}

/// @nodoc
class _$DecorationEmojiCopyWithImpl<$Res, $Val extends DecorationEmoji>
    implements $DecorationEmojiCopyWith<$Res> {
  _$DecorationEmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = freezed,
  }) {
    return _then(_value.copyWith(
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecorationEmojiImplCopyWith<$Res>
    implements $DecorationEmojiCopyWith<$Res> {
  factory _$$DecorationEmojiImplCopyWith(_$DecorationEmojiImpl value,
          $Res Function(_$DecorationEmojiImpl) then) =
      __$$DecorationEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emoji});
}

/// @nodoc
class __$$DecorationEmojiImplCopyWithImpl<$Res>
    extends _$DecorationEmojiCopyWithImpl<$Res, _$DecorationEmojiImpl>
    implements _$$DecorationEmojiImplCopyWith<$Res> {
  __$$DecorationEmojiImplCopyWithImpl(
      _$DecorationEmojiImpl _value, $Res Function(_$DecorationEmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = freezed,
  }) {
    return _then(_$DecorationEmojiImpl(
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DecorationEmojiImpl extends _DecorationEmoji {
  const _$DecorationEmojiImpl({this.emoji}) : super._();

  @override
  final String? emoji;

  @override
  String toString() {
    return 'DecorationEmoji(emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecorationEmojiImpl &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecorationEmojiImplCopyWith<_$DecorationEmojiImpl> get copyWith =>
      __$$DecorationEmojiImplCopyWithImpl<_$DecorationEmojiImpl>(
          this, _$identity);
}

abstract class _DecorationEmoji extends DecorationEmoji {
  const factory _DecorationEmoji({final String? emoji}) = _$DecorationEmojiImpl;
  const _DecorationEmoji._() : super._();

  @override
  String? get emoji;
  @override
  @JsonKey(ignore: true)
  _$$DecorationEmojiImplCopyWith<_$DecorationEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
