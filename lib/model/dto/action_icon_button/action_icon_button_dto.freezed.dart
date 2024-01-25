// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_icon_button_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActionIconButtonDto {
  ButtonStyle? get style => throw _privateConstructorUsedError;
  IconData? get ellipsis => throw _privateConstructorUsedError;
  IconData? get font => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionIconButtonDtoCopyWith<ActionIconButtonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionIconButtonDtoCopyWith<$Res> {
  factory $ActionIconButtonDtoCopyWith(
          ActionIconButtonDto value, $Res Function(ActionIconButtonDto) then) =
      _$ActionIconButtonDtoCopyWithImpl<$Res, ActionIconButtonDto>;
  @useResult
  $Res call({ButtonStyle? style, IconData? ellipsis, IconData? font});
}

/// @nodoc
class _$ActionIconButtonDtoCopyWithImpl<$Res, $Val extends ActionIconButtonDto>
    implements $ActionIconButtonDtoCopyWith<$Res> {
  _$ActionIconButtonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = freezed,
    Object? ellipsis = freezed,
    Object? font = freezed,
  }) {
    return _then(_value.copyWith(
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ButtonStyle?,
      ellipsis: freezed == ellipsis
          ? _value.ellipsis
          : ellipsis // ignore: cast_nullable_to_non_nullable
              as IconData?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionIconButtonDtoImplCopyWith<$Res>
    implements $ActionIconButtonDtoCopyWith<$Res> {
  factory _$$ActionIconButtonDtoImplCopyWith(_$ActionIconButtonDtoImpl value,
          $Res Function(_$ActionIconButtonDtoImpl) then) =
      __$$ActionIconButtonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ButtonStyle? style, IconData? ellipsis, IconData? font});
}

/// @nodoc
class __$$ActionIconButtonDtoImplCopyWithImpl<$Res>
    extends _$ActionIconButtonDtoCopyWithImpl<$Res, _$ActionIconButtonDtoImpl>
    implements _$$ActionIconButtonDtoImplCopyWith<$Res> {
  __$$ActionIconButtonDtoImplCopyWithImpl(_$ActionIconButtonDtoImpl _value,
      $Res Function(_$ActionIconButtonDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = freezed,
    Object? ellipsis = freezed,
    Object? font = freezed,
  }) {
    return _then(_$ActionIconButtonDtoImpl(
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ButtonStyle?,
      ellipsis: freezed == ellipsis
          ? _value.ellipsis
          : ellipsis // ignore: cast_nullable_to_non_nullable
              as IconData?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc

class _$ActionIconButtonDtoImpl extends _ActionIconButtonDto {
  const _$ActionIconButtonDtoImpl(
      {this.style,
      this.ellipsis = Ionicons.ellipsis_horizontal,
      this.font = FontAwesomeIcons.a})
      : super._();

  @override
  final ButtonStyle? style;
  @override
  @JsonKey()
  final IconData? ellipsis;
  @override
  @JsonKey()
  final IconData? font;

  @override
  String toString() {
    return 'ActionIconButtonDto(style: $style, ellipsis: $ellipsis, font: $font)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionIconButtonDtoImpl &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.ellipsis, ellipsis) ||
                other.ellipsis == ellipsis) &&
            (identical(other.font, font) || other.font == font));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style, ellipsis, font);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionIconButtonDtoImplCopyWith<_$ActionIconButtonDtoImpl> get copyWith =>
      __$$ActionIconButtonDtoImplCopyWithImpl<_$ActionIconButtonDtoImpl>(
          this, _$identity);
}

abstract class _ActionIconButtonDto extends ActionIconButtonDto {
  const factory _ActionIconButtonDto(
      {final ButtonStyle? style,
      final IconData? ellipsis,
      final IconData? font}) = _$ActionIconButtonDtoImpl;
  const _ActionIconButtonDto._() : super._();

  @override
  ButtonStyle? get style;
  @override
  IconData? get ellipsis;
  @override
  IconData? get font;
  @override
  @JsonKey(ignore: true)
  _$$ActionIconButtonDtoImplCopyWith<_$ActionIconButtonDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
