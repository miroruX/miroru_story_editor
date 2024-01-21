// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next_icon_button_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NextIconButtonDto {
  ButtonStyle? get style => throw _privateConstructorUsedError;
  Widget get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NextIconButtonDtoCopyWith<NextIconButtonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextIconButtonDtoCopyWith<$Res> {
  factory $NextIconButtonDtoCopyWith(
          NextIconButtonDto value, $Res Function(NextIconButtonDto) then) =
      _$NextIconButtonDtoCopyWithImpl<$Res, NextIconButtonDto>;
  @useResult
  $Res call({ButtonStyle? style, Widget icon});
}

/// @nodoc
class _$NextIconButtonDtoCopyWithImpl<$Res, $Val extends NextIconButtonDto>
    implements $NextIconButtonDtoCopyWith<$Res> {
  _$NextIconButtonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = freezed,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ButtonStyle?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryIconStyleDtoImplCopyWith<$Res>
    implements $NextIconButtonDtoCopyWith<$Res> {
  factory _$$StoryIconStyleDtoImplCopyWith(_$StoryIconStyleDtoImpl value,
          $Res Function(_$StoryIconStyleDtoImpl) then) =
      __$$StoryIconStyleDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ButtonStyle? style, Widget icon});
}

/// @nodoc
class __$$StoryIconStyleDtoImplCopyWithImpl<$Res>
    extends _$NextIconButtonDtoCopyWithImpl<$Res, _$StoryIconStyleDtoImpl>
    implements _$$StoryIconStyleDtoImplCopyWith<$Res> {
  __$$StoryIconStyleDtoImplCopyWithImpl(_$StoryIconStyleDtoImpl _value,
      $Res Function(_$StoryIconStyleDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = freezed,
    Object? icon = null,
  }) {
    return _then(_$StoryIconStyleDtoImpl(
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ButtonStyle?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$StoryIconStyleDtoImpl extends _StoryIconStyleDto {
  const _$StoryIconStyleDtoImpl(
      {this.style, this.icon = const Icon(Ionicons.arrow_forward)})
      : super._();

  @override
  final ButtonStyle? style;
  @override
  @JsonKey()
  final Widget icon;

  @override
  String toString() {
    return 'NextIconButtonDto(style: $style, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryIconStyleDtoImpl &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryIconStyleDtoImplCopyWith<_$StoryIconStyleDtoImpl> get copyWith =>
      __$$StoryIconStyleDtoImplCopyWithImpl<_$StoryIconStyleDtoImpl>(
          this, _$identity);
}

abstract class _StoryIconStyleDto extends NextIconButtonDto {
  const factory _StoryIconStyleDto(
      {final ButtonStyle? style, final Widget icon}) = _$StoryIconStyleDtoImpl;
  const _StoryIconStyleDto._() : super._();

  @override
  ButtonStyle? get style;
  @override
  Widget get icon;
  @override
  @JsonKey(ignore: true)
  _$$StoryIconStyleDtoImplCopyWith<_$StoryIconStyleDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
