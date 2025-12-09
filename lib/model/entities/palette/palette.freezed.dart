// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Palette {

 bool get isPainting; bool get isEditingText; bool get isMovingItem;
/// Create a copy of Palette
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaletteCopyWith<Palette> get copyWith => _$PaletteCopyWithImpl<Palette>(this as Palette, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Palette&&(identical(other.isPainting, isPainting) || other.isPainting == isPainting)&&(identical(other.isEditingText, isEditingText) || other.isEditingText == isEditingText)&&(identical(other.isMovingItem, isMovingItem) || other.isMovingItem == isMovingItem));
}


@override
int get hashCode => Object.hash(runtimeType,isPainting,isEditingText,isMovingItem);

@override
String toString() {
  return 'Palette(isPainting: $isPainting, isEditingText: $isEditingText, isMovingItem: $isMovingItem)';
}


}

/// @nodoc
abstract mixin class $PaletteCopyWith<$Res>  {
  factory $PaletteCopyWith(Palette value, $Res Function(Palette) _then) = _$PaletteCopyWithImpl;
@useResult
$Res call({
 bool isPainting, bool isEditingText, bool isMovingItem
});




}
/// @nodoc
class _$PaletteCopyWithImpl<$Res>
    implements $PaletteCopyWith<$Res> {
  _$PaletteCopyWithImpl(this._self, this._then);

  final Palette _self;
  final $Res Function(Palette) _then;

/// Create a copy of Palette
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPainting = null,Object? isEditingText = null,Object? isMovingItem = null,}) {
  return _then(_self.copyWith(
isPainting: null == isPainting ? _self.isPainting : isPainting // ignore: cast_nullable_to_non_nullable
as bool,isEditingText: null == isEditingText ? _self.isEditingText : isEditingText // ignore: cast_nullable_to_non_nullable
as bool,isMovingItem: null == isMovingItem ? _self.isMovingItem : isMovingItem // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Palette].
extension PalettePatterns on Palette {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Palette value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Palette() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Palette value)  $default,){
final _that = this;
switch (_that) {
case _Palette():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Palette value)?  $default,){
final _that = this;
switch (_that) {
case _Palette() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isPainting,  bool isEditingText,  bool isMovingItem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Palette() when $default != null:
return $default(_that.isPainting,_that.isEditingText,_that.isMovingItem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isPainting,  bool isEditingText,  bool isMovingItem)  $default,) {final _that = this;
switch (_that) {
case _Palette():
return $default(_that.isPainting,_that.isEditingText,_that.isMovingItem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isPainting,  bool isEditingText,  bool isMovingItem)?  $default,) {final _that = this;
switch (_that) {
case _Palette() when $default != null:
return $default(_that.isPainting,_that.isEditingText,_that.isMovingItem);case _:
  return null;

}
}

}

/// @nodoc


class _Palette extends Palette {
  const _Palette({this.isPainting = false, this.isEditingText = false, this.isMovingItem = false}): super._();
  

@override@JsonKey() final  bool isPainting;
@override@JsonKey() final  bool isEditingText;
@override@JsonKey() final  bool isMovingItem;

/// Create a copy of Palette
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaletteCopyWith<_Palette> get copyWith => __$PaletteCopyWithImpl<_Palette>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Palette&&(identical(other.isPainting, isPainting) || other.isPainting == isPainting)&&(identical(other.isEditingText, isEditingText) || other.isEditingText == isEditingText)&&(identical(other.isMovingItem, isMovingItem) || other.isMovingItem == isMovingItem));
}


@override
int get hashCode => Object.hash(runtimeType,isPainting,isEditingText,isMovingItem);

@override
String toString() {
  return 'Palette(isPainting: $isPainting, isEditingText: $isEditingText, isMovingItem: $isMovingItem)';
}


}

/// @nodoc
abstract mixin class _$PaletteCopyWith<$Res> implements $PaletteCopyWith<$Res> {
  factory _$PaletteCopyWith(_Palette value, $Res Function(_Palette) _then) = __$PaletteCopyWithImpl;
@override @useResult
$Res call({
 bool isPainting, bool isEditingText, bool isMovingItem
});




}
/// @nodoc
class __$PaletteCopyWithImpl<$Res>
    implements _$PaletteCopyWith<$Res> {
  __$PaletteCopyWithImpl(this._self, this._then);

  final _Palette _self;
  final $Res Function(_Palette) _then;

/// Create a copy of Palette
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPainting = null,Object? isEditingText = null,Object? isMovingItem = null,}) {
  return _then(_Palette(
isPainting: null == isPainting ? _self.isPainting : isPainting // ignore: cast_nullable_to_non_nullable
as bool,isEditingText: null == isEditingText ? _self.isEditingText : isEditingText // ignore: cast_nullable_to_non_nullable
as bool,isMovingItem: null == isMovingItem ? _self.isMovingItem : isMovingItem // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
