// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leading_icon_button_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeadingIconButtonDto {
  ButtonStyle? get style => throw _privateConstructorUsedError;
  IconData? get back => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadingIconButtonDtoCopyWith<LeadingIconButtonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadingIconButtonDtoCopyWith<$Res> {
  factory $LeadingIconButtonDtoCopyWith(LeadingIconButtonDto value,
          $Res Function(LeadingIconButtonDto) then) =
      _$LeadingIconButtonDtoCopyWithImpl<$Res, LeadingIconButtonDto>;
  @useResult
  $Res call({ButtonStyle? style, IconData? back});
}

/// @nodoc
class _$LeadingIconButtonDtoCopyWithImpl<$Res,
        $Val extends LeadingIconButtonDto>
    implements $LeadingIconButtonDtoCopyWith<$Res> {
  _$LeadingIconButtonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = freezed,
    Object? back = freezed,
  }) {
    return _then(_value.copyWith(
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ButtonStyle?,
      back: freezed == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadingIconButtonDtoImplCopyWith<$Res>
    implements $LeadingIconButtonDtoCopyWith<$Res> {
  factory _$$LeadingIconButtonDtoImplCopyWith(_$LeadingIconButtonDtoImpl value,
          $Res Function(_$LeadingIconButtonDtoImpl) then) =
      __$$LeadingIconButtonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ButtonStyle? style, IconData? back});
}

/// @nodoc
class __$$LeadingIconButtonDtoImplCopyWithImpl<$Res>
    extends _$LeadingIconButtonDtoCopyWithImpl<$Res, _$LeadingIconButtonDtoImpl>
    implements _$$LeadingIconButtonDtoImplCopyWith<$Res> {
  __$$LeadingIconButtonDtoImplCopyWithImpl(_$LeadingIconButtonDtoImpl _value,
      $Res Function(_$LeadingIconButtonDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = freezed,
    Object? back = freezed,
  }) {
    return _then(_$LeadingIconButtonDtoImpl(
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ButtonStyle?,
      back: freezed == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc

class _$LeadingIconButtonDtoImpl extends _LeadingIconButtonDto {
  const _$LeadingIconButtonDtoImpl({this.style, this.back = Ionicons.close})
      : super._();

  @override
  final ButtonStyle? style;
  @override
  @JsonKey()
  final IconData? back;

  @override
  String toString() {
    return 'LeadingIconButtonDto(style: $style, back: $back)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadingIconButtonDtoImpl &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.back, back) || other.back == back));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style, back);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadingIconButtonDtoImplCopyWith<_$LeadingIconButtonDtoImpl>
      get copyWith =>
          __$$LeadingIconButtonDtoImplCopyWithImpl<_$LeadingIconButtonDtoImpl>(
              this, _$identity);
}

abstract class _LeadingIconButtonDto extends LeadingIconButtonDto {
  const factory _LeadingIconButtonDto(
      {final ButtonStyle? style,
      final IconData? back}) = _$LeadingIconButtonDtoImpl;
  const _LeadingIconButtonDto._() : super._();

  @override
  ButtonStyle? get style;
  @override
  IconData? get back;
  @override
  @JsonKey(ignore: true)
  _$$LeadingIconButtonDtoImplCopyWith<_$LeadingIconButtonDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
