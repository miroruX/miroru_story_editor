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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DecorationEmoji {
  String? get text => throw _privateConstructorUsedError;
  double? get fontSize => throw _privateConstructorUsedError;
  String? get fontFamily => throw _privateConstructorUsedError;
  String? get colorCode => throw _privateConstructorUsedError;
  String? get backgroundColorCode => throw _privateConstructorUsedError;

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
  $Res call(
      {String? text,
      double? fontSize,
      String? fontFamily,
      String? colorCode,
      String? backgroundColorCode});
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
    Object? text = freezed,
    Object? fontSize = freezed,
    Object? fontFamily = freezed,
    Object? colorCode = freezed,
    Object? backgroundColorCode = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      fontFamily: freezed == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorCode: freezed == backgroundColorCode
          ? _value.backgroundColorCode
          : backgroundColorCode // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {String? text,
      double? fontSize,
      String? fontFamily,
      String? colorCode,
      String? backgroundColorCode});
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
    Object? text = freezed,
    Object? fontSize = freezed,
    Object? fontFamily = freezed,
    Object? colorCode = freezed,
    Object? backgroundColorCode = freezed,
  }) {
    return _then(_$DecorationEmojiImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      fontFamily: freezed == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorCode: freezed == backgroundColorCode
          ? _value.backgroundColorCode
          : backgroundColorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DecorationEmojiImpl extends _DecorationEmoji {
  const _$DecorationEmojiImpl(
      {this.text,
      this.fontSize,
      this.fontFamily,
      this.colorCode,
      this.backgroundColorCode})
      : super._();

  @override
  final String? text;
  @override
  final double? fontSize;
  @override
  final String? fontFamily;
  @override
  final String? colorCode;
  @override
  final String? backgroundColorCode;

  @override
  String toString() {
    return 'DecorationEmoji(text: $text, fontSize: $fontSize, fontFamily: $fontFamily, colorCode: $colorCode, backgroundColorCode: $backgroundColorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecorationEmojiImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.backgroundColorCode, backgroundColorCode) ||
                other.backgroundColorCode == backgroundColorCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, text, fontSize, fontFamily, colorCode, backgroundColorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecorationEmojiImplCopyWith<_$DecorationEmojiImpl> get copyWith =>
      __$$DecorationEmojiImplCopyWithImpl<_$DecorationEmojiImpl>(
          this, _$identity);
}

abstract class _DecorationEmoji extends DecorationEmoji {
  const factory _DecorationEmoji(
      {final String? text,
      final double? fontSize,
      final String? fontFamily,
      final String? colorCode,
      final String? backgroundColorCode}) = _$DecorationEmojiImpl;
  const _DecorationEmoji._() : super._();

  @override
  String? get text;
  @override
  double? get fontSize;
  @override
  String? get fontFamily;
  @override
  String? get colorCode;
  @override
  String? get backgroundColorCode;
  @override
  @JsonKey(ignore: true)
  _$$DecorationEmojiImplCopyWith<_$DecorationEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
