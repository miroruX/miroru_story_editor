// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paint_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaintLine {

 Stroke get points; StrokeOptions get strokeOptions; Color get color; BrushType get brushType;
/// Create a copy of PaintLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaintLineCopyWith<PaintLine> get copyWith => _$PaintLineCopyWithImpl<PaintLine>(this as PaintLine, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaintLine&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.strokeOptions, strokeOptions) || other.strokeOptions == strokeOptions)&&(identical(other.color, color) || other.color == color)&&(identical(other.brushType, brushType) || other.brushType == brushType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(points),strokeOptions,color,brushType);

@override
String toString() {
  return 'PaintLine(points: $points, strokeOptions: $strokeOptions, color: $color, brushType: $brushType)';
}


}

/// @nodoc
abstract mixin class $PaintLineCopyWith<$Res>  {
  factory $PaintLineCopyWith(PaintLine value, $Res Function(PaintLine) _then) = _$PaintLineCopyWithImpl;
@useResult
$Res call({
 Stroke points, StrokeOptions strokeOptions, Color color, BrushType brushType
});




}
/// @nodoc
class _$PaintLineCopyWithImpl<$Res>
    implements $PaintLineCopyWith<$Res> {
  _$PaintLineCopyWithImpl(this._self, this._then);

  final PaintLine _self;
  final $Res Function(PaintLine) _then;

/// Create a copy of PaintLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? strokeOptions = null,Object? color = null,Object? brushType = null,}) {
  return _then(_self.copyWith(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as Stroke,strokeOptions: null == strokeOptions ? _self.strokeOptions : strokeOptions // ignore: cast_nullable_to_non_nullable
as StrokeOptions,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,brushType: null == brushType ? _self.brushType : brushType // ignore: cast_nullable_to_non_nullable
as BrushType,
  ));
}

}


/// Adds pattern-matching-related methods to [PaintLine].
extension PaintLinePatterns on PaintLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaintLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaintLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaintLine value)  $default,){
final _that = this;
switch (_that) {
case _PaintLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaintLine value)?  $default,){
final _that = this;
switch (_that) {
case _PaintLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Stroke points,  StrokeOptions strokeOptions,  Color color,  BrushType brushType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaintLine() when $default != null:
return $default(_that.points,_that.strokeOptions,_that.color,_that.brushType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Stroke points,  StrokeOptions strokeOptions,  Color color,  BrushType brushType)  $default,) {final _that = this;
switch (_that) {
case _PaintLine():
return $default(_that.points,_that.strokeOptions,_that.color,_that.brushType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Stroke points,  StrokeOptions strokeOptions,  Color color,  BrushType brushType)?  $default,) {final _that = this;
switch (_that) {
case _PaintLine() when $default != null:
return $default(_that.points,_that.strokeOptions,_that.color,_that.brushType);case _:
  return null;

}
}

}

/// @nodoc


class _PaintLine extends PaintLine {
  const _PaintLine({final  Stroke points = const [], required this.strokeOptions, this.color = Colors.black, this.brushType = BrushType.pen}): _points = points,super._();
  

 final  Stroke _points;
@override@JsonKey() Stroke get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override final  StrokeOptions strokeOptions;
@override@JsonKey() final  Color color;
@override@JsonKey() final  BrushType brushType;

/// Create a copy of PaintLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaintLineCopyWith<_PaintLine> get copyWith => __$PaintLineCopyWithImpl<_PaintLine>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaintLine&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.strokeOptions, strokeOptions) || other.strokeOptions == strokeOptions)&&(identical(other.color, color) || other.color == color)&&(identical(other.brushType, brushType) || other.brushType == brushType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_points),strokeOptions,color,brushType);

@override
String toString() {
  return 'PaintLine(points: $points, strokeOptions: $strokeOptions, color: $color, brushType: $brushType)';
}


}

/// @nodoc
abstract mixin class _$PaintLineCopyWith<$Res> implements $PaintLineCopyWith<$Res> {
  factory _$PaintLineCopyWith(_PaintLine value, $Res Function(_PaintLine) _then) = __$PaintLineCopyWithImpl;
@override @useResult
$Res call({
 Stroke points, StrokeOptions strokeOptions, Color color, BrushType brushType
});




}
/// @nodoc
class __$PaintLineCopyWithImpl<$Res>
    implements _$PaintLineCopyWith<$Res> {
  __$PaintLineCopyWithImpl(this._self, this._then);

  final _PaintLine _self;
  final $Res Function(_PaintLine) _then;

/// Create a copy of PaintLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? strokeOptions = null,Object? color = null,Object? brushType = null,}) {
  return _then(_PaintLine(
points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as Stroke,strokeOptions: null == strokeOptions ? _self.strokeOptions : strokeOptions // ignore: cast_nullable_to_non_nullable
as StrokeOptions,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,brushType: null == brushType ? _self.brushType : brushType // ignore: cast_nullable_to_non_nullable
as BrushType,
  ));
}


}

// dart format on
