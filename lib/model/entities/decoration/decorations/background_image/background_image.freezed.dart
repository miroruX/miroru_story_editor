// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DecorationBackgroundImage {

 File? get backgroundImageFile;
/// Create a copy of DecorationBackgroundImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecorationBackgroundImageCopyWith<DecorationBackgroundImage> get copyWith => _$DecorationBackgroundImageCopyWithImpl<DecorationBackgroundImage>(this as DecorationBackgroundImage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecorationBackgroundImage&&(identical(other.backgroundImageFile, backgroundImageFile) || other.backgroundImageFile == backgroundImageFile));
}


@override
int get hashCode => Object.hash(runtimeType,backgroundImageFile);

@override
String toString() {
  return 'DecorationBackgroundImage(backgroundImageFile: $backgroundImageFile)';
}


}

/// @nodoc
abstract mixin class $DecorationBackgroundImageCopyWith<$Res>  {
  factory $DecorationBackgroundImageCopyWith(DecorationBackgroundImage value, $Res Function(DecorationBackgroundImage) _then) = _$DecorationBackgroundImageCopyWithImpl;
@useResult
$Res call({
 File? backgroundImageFile
});




}
/// @nodoc
class _$DecorationBackgroundImageCopyWithImpl<$Res>
    implements $DecorationBackgroundImageCopyWith<$Res> {
  _$DecorationBackgroundImageCopyWithImpl(this._self, this._then);

  final DecorationBackgroundImage _self;
  final $Res Function(DecorationBackgroundImage) _then;

/// Create a copy of DecorationBackgroundImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backgroundImageFile = freezed,}) {
  return _then(_self.copyWith(
backgroundImageFile: freezed == backgroundImageFile ? _self.backgroundImageFile : backgroundImageFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [DecorationBackgroundImage].
extension DecorationBackgroundImagePatterns on DecorationBackgroundImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecorationBackgroundImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecorationBackgroundImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecorationBackgroundImage value)  $default,){
final _that = this;
switch (_that) {
case _DecorationBackgroundImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecorationBackgroundImage value)?  $default,){
final _that = this;
switch (_that) {
case _DecorationBackgroundImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( File? backgroundImageFile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecorationBackgroundImage() when $default != null:
return $default(_that.backgroundImageFile);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( File? backgroundImageFile)  $default,) {final _that = this;
switch (_that) {
case _DecorationBackgroundImage():
return $default(_that.backgroundImageFile);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( File? backgroundImageFile)?  $default,) {final _that = this;
switch (_that) {
case _DecorationBackgroundImage() when $default != null:
return $default(_that.backgroundImageFile);case _:
  return null;

}
}

}

/// @nodoc


class _DecorationBackgroundImage extends DecorationBackgroundImage {
  const _DecorationBackgroundImage({this.backgroundImageFile}): super._();
  

@override final  File? backgroundImageFile;

/// Create a copy of DecorationBackgroundImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecorationBackgroundImageCopyWith<_DecorationBackgroundImage> get copyWith => __$DecorationBackgroundImageCopyWithImpl<_DecorationBackgroundImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecorationBackgroundImage&&(identical(other.backgroundImageFile, backgroundImageFile) || other.backgroundImageFile == backgroundImageFile));
}


@override
int get hashCode => Object.hash(runtimeType,backgroundImageFile);

@override
String toString() {
  return 'DecorationBackgroundImage(backgroundImageFile: $backgroundImageFile)';
}


}

/// @nodoc
abstract mixin class _$DecorationBackgroundImageCopyWith<$Res> implements $DecorationBackgroundImageCopyWith<$Res> {
  factory _$DecorationBackgroundImageCopyWith(_DecorationBackgroundImage value, $Res Function(_DecorationBackgroundImage) _then) = __$DecorationBackgroundImageCopyWithImpl;
@override @useResult
$Res call({
 File? backgroundImageFile
});




}
/// @nodoc
class __$DecorationBackgroundImageCopyWithImpl<$Res>
    implements _$DecorationBackgroundImageCopyWith<$Res> {
  __$DecorationBackgroundImageCopyWithImpl(this._self, this._then);

  final _DecorationBackgroundImage _self;
  final $Res Function(_DecorationBackgroundImage) _then;

/// Create a copy of DecorationBackgroundImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backgroundImageFile = freezed,}) {
  return _then(_DecorationBackgroundImage(
backgroundImageFile: freezed == backgroundImageFile ? _self.backgroundImageFile : backgroundImageFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
