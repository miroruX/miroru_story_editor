// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DecorationBackgroundImage {
  File? get backgroundImageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DecorationBackgroundImageCopyWith<DecorationBackgroundImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecorationBackgroundImageCopyWith<$Res> {
  factory $DecorationBackgroundImageCopyWith(DecorationBackgroundImage value,
          $Res Function(DecorationBackgroundImage) then) =
      _$DecorationBackgroundImageCopyWithImpl<$Res, DecorationBackgroundImage>;
  @useResult
  $Res call({File? backgroundImageFile});
}

/// @nodoc
class _$DecorationBackgroundImageCopyWithImpl<$Res,
        $Val extends DecorationBackgroundImage>
    implements $DecorationBackgroundImageCopyWith<$Res> {
  _$DecorationBackgroundImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundImageFile = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundImageFile: freezed == backgroundImageFile
          ? _value.backgroundImageFile
          : backgroundImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecorationBackgroundImageImplCopyWith<$Res>
    implements $DecorationBackgroundImageCopyWith<$Res> {
  factory _$$DecorationBackgroundImageImplCopyWith(
          _$DecorationBackgroundImageImpl value,
          $Res Function(_$DecorationBackgroundImageImpl) then) =
      __$$DecorationBackgroundImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File? backgroundImageFile});
}

/// @nodoc
class __$$DecorationBackgroundImageImplCopyWithImpl<$Res>
    extends _$DecorationBackgroundImageCopyWithImpl<$Res,
        _$DecorationBackgroundImageImpl>
    implements _$$DecorationBackgroundImageImplCopyWith<$Res> {
  __$$DecorationBackgroundImageImplCopyWithImpl(
      _$DecorationBackgroundImageImpl _value,
      $Res Function(_$DecorationBackgroundImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundImageFile = freezed,
  }) {
    return _then(_$DecorationBackgroundImageImpl(
      backgroundImageFile: freezed == backgroundImageFile
          ? _value.backgroundImageFile
          : backgroundImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$DecorationBackgroundImageImpl extends _DecorationBackgroundImage {
  const _$DecorationBackgroundImageImpl({this.backgroundImageFile}) : super._();

  @override
  final File? backgroundImageFile;

  @override
  String toString() {
    return 'DecorationBackgroundImage(backgroundImageFile: $backgroundImageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecorationBackgroundImageImpl &&
            (identical(other.backgroundImageFile, backgroundImageFile) ||
                other.backgroundImageFile == backgroundImageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, backgroundImageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecorationBackgroundImageImplCopyWith<_$DecorationBackgroundImageImpl>
      get copyWith => __$$DecorationBackgroundImageImplCopyWithImpl<
          _$DecorationBackgroundImageImpl>(this, _$identity);
}

abstract class _DecorationBackgroundImage extends DecorationBackgroundImage {
  const factory _DecorationBackgroundImage({final File? backgroundImageFile}) =
      _$DecorationBackgroundImageImpl;
  const _DecorationBackgroundImage._() : super._();

  @override
  File? get backgroundImageFile;
  @override
  @JsonKey(ignore: true)
  _$$DecorationBackgroundImageImplCopyWith<_$DecorationBackgroundImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
