// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paint_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaintPalette {

 BrushType get brushType; Color get color; StrokeOptions? get strokeOptions;
/// Create a copy of PaintPalette
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaintPaletteCopyWith<PaintPalette> get copyWith => _$PaintPaletteCopyWithImpl<PaintPalette>(this as PaintPalette, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaintPalette&&(identical(other.brushType, brushType) || other.brushType == brushType)&&(identical(other.color, color) || other.color == color)&&(identical(other.strokeOptions, strokeOptions) || other.strokeOptions == strokeOptions));
}


@override
int get hashCode => Object.hash(runtimeType,brushType,color,strokeOptions);

@override
String toString() {
  return 'PaintPalette(brushType: $brushType, color: $color, strokeOptions: $strokeOptions)';
}


}

/// @nodoc
abstract mixin class $PaintPaletteCopyWith<$Res>  {
  factory $PaintPaletteCopyWith(PaintPalette value, $Res Function(PaintPalette) _then) = _$PaintPaletteCopyWithImpl;
@useResult
$Res call({
 BrushType brushType, Color color, StrokeOptions? strokeOptions
});




}
/// @nodoc
class _$PaintPaletteCopyWithImpl<$Res>
    implements $PaintPaletteCopyWith<$Res> {
  _$PaintPaletteCopyWithImpl(this._self, this._then);

  final PaintPalette _self;
  final $Res Function(PaintPalette) _then;

/// Create a copy of PaintPalette
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brushType = null,Object? color = null,Object? strokeOptions = freezed,}) {
  return _then(_self.copyWith(
brushType: null == brushType ? _self.brushType : brushType // ignore: cast_nullable_to_non_nullable
as BrushType,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,strokeOptions: freezed == strokeOptions ? _self.strokeOptions : strokeOptions // ignore: cast_nullable_to_non_nullable
as StrokeOptions?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaintPalette].
extension PaintPalettePatterns on PaintPalette {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaintPalette value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaintPalette() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaintPalette value)  $default,){
final _that = this;
switch (_that) {
case _PaintPalette():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaintPalette value)?  $default,){
final _that = this;
switch (_that) {
case _PaintPalette() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BrushType brushType,  Color color,  StrokeOptions? strokeOptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaintPalette() when $default != null:
return $default(_that.brushType,_that.color,_that.strokeOptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BrushType brushType,  Color color,  StrokeOptions? strokeOptions)  $default,) {final _that = this;
switch (_that) {
case _PaintPalette():
return $default(_that.brushType,_that.color,_that.strokeOptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BrushType brushType,  Color color,  StrokeOptions? strokeOptions)?  $default,) {final _that = this;
switch (_that) {
case _PaintPalette() when $default != null:
return $default(_that.brushType,_that.color,_that.strokeOptions);case _:
  return null;

}
}

}

/// @nodoc


class _PaintPalette extends PaintPalette {
  const _PaintPalette({this.brushType = BrushType.pen, this.color = Colors.black, this.strokeOptions}): super._();
  

@override@JsonKey() final  BrushType brushType;
@override@JsonKey() final  Color color;
@override final  StrokeOptions? strokeOptions;

/// Create a copy of PaintPalette
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaintPaletteCopyWith<_PaintPalette> get copyWith => __$PaintPaletteCopyWithImpl<_PaintPalette>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaintPalette&&(identical(other.brushType, brushType) || other.brushType == brushType)&&(identical(other.color, color) || other.color == color)&&(identical(other.strokeOptions, strokeOptions) || other.strokeOptions == strokeOptions));
}


@override
int get hashCode => Object.hash(runtimeType,brushType,color,strokeOptions);

@override
String toString() {
  return 'PaintPalette(brushType: $brushType, color: $color, strokeOptions: $strokeOptions)';
}


}

/// @nodoc
abstract mixin class _$PaintPaletteCopyWith<$Res> implements $PaintPaletteCopyWith<$Res> {
  factory _$PaintPaletteCopyWith(_PaintPalette value, $Res Function(_PaintPalette) _then) = __$PaintPaletteCopyWithImpl;
@override @useResult
$Res call({
 BrushType brushType, Color color, StrokeOptions? strokeOptions
});




}
/// @nodoc
class __$PaintPaletteCopyWithImpl<$Res>
    implements _$PaintPaletteCopyWith<$Res> {
  __$PaintPaletteCopyWithImpl(this._self, this._then);

  final _PaintPalette _self;
  final $Res Function(_PaintPalette) _then;

/// Create a copy of PaintPalette
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brushType = null,Object? color = null,Object? strokeOptions = freezed,}) {
  return _then(_PaintPalette(
brushType: null == brushType ? _self.brushType : brushType // ignore: cast_nullable_to_non_nullable
as BrushType,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,strokeOptions: freezed == strokeOptions ? _self.strokeOptions : strokeOptions // ignore: cast_nullable_to_non_nullable
as StrokeOptions?,
  ));
}


}

// dart format on
