// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoration_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DecorationPalette {

 List<List<RenderItem<DecorationItem>>> get historyRenderItems; int get currentHistoryIndex;
/// Create a copy of DecorationPalette
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecorationPaletteCopyWith<DecorationPalette> get copyWith => _$DecorationPaletteCopyWithImpl<DecorationPalette>(this as DecorationPalette, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecorationPalette&&const DeepCollectionEquality().equals(other.historyRenderItems, historyRenderItems)&&(identical(other.currentHistoryIndex, currentHistoryIndex) || other.currentHistoryIndex == currentHistoryIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(historyRenderItems),currentHistoryIndex);

@override
String toString() {
  return 'DecorationPalette(historyRenderItems: $historyRenderItems, currentHistoryIndex: $currentHistoryIndex)';
}


}

/// @nodoc
abstract mixin class $DecorationPaletteCopyWith<$Res>  {
  factory $DecorationPaletteCopyWith(DecorationPalette value, $Res Function(DecorationPalette) _then) = _$DecorationPaletteCopyWithImpl;
@useResult
$Res call({
 List<List<RenderItem<DecorationItem>>> historyRenderItems, int currentHistoryIndex
});




}
/// @nodoc
class _$DecorationPaletteCopyWithImpl<$Res>
    implements $DecorationPaletteCopyWith<$Res> {
  _$DecorationPaletteCopyWithImpl(this._self, this._then);

  final DecorationPalette _self;
  final $Res Function(DecorationPalette) _then;

/// Create a copy of DecorationPalette
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? historyRenderItems = null,Object? currentHistoryIndex = null,}) {
  return _then(_self.copyWith(
historyRenderItems: null == historyRenderItems ? _self.historyRenderItems : historyRenderItems // ignore: cast_nullable_to_non_nullable
as List<List<RenderItem<DecorationItem>>>,currentHistoryIndex: null == currentHistoryIndex ? _self.currentHistoryIndex : currentHistoryIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DecorationPalette].
extension DecorationPalettePatterns on DecorationPalette {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecorationPalette value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecorationPalette() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecorationPalette value)  $default,){
final _that = this;
switch (_that) {
case _DecorationPalette():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecorationPalette value)?  $default,){
final _that = this;
switch (_that) {
case _DecorationPalette() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<List<RenderItem<DecorationItem>>> historyRenderItems,  int currentHistoryIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecorationPalette() when $default != null:
return $default(_that.historyRenderItems,_that.currentHistoryIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<List<RenderItem<DecorationItem>>> historyRenderItems,  int currentHistoryIndex)  $default,) {final _that = this;
switch (_that) {
case _DecorationPalette():
return $default(_that.historyRenderItems,_that.currentHistoryIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<List<RenderItem<DecorationItem>>> historyRenderItems,  int currentHistoryIndex)?  $default,) {final _that = this;
switch (_that) {
case _DecorationPalette() when $default != null:
return $default(_that.historyRenderItems,_that.currentHistoryIndex);case _:
  return null;

}
}

}

/// @nodoc


class _DecorationPalette extends DecorationPalette {
  const _DecorationPalette({required final  List<List<RenderItem<DecorationItem>>> historyRenderItems, this.currentHistoryIndex = 0}): _historyRenderItems = historyRenderItems,super._();
  

 final  List<List<RenderItem<DecorationItem>>> _historyRenderItems;
@override List<List<RenderItem<DecorationItem>>> get historyRenderItems {
  if (_historyRenderItems is EqualUnmodifiableListView) return _historyRenderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_historyRenderItems);
}

@override@JsonKey() final  int currentHistoryIndex;

/// Create a copy of DecorationPalette
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecorationPaletteCopyWith<_DecorationPalette> get copyWith => __$DecorationPaletteCopyWithImpl<_DecorationPalette>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecorationPalette&&const DeepCollectionEquality().equals(other._historyRenderItems, _historyRenderItems)&&(identical(other.currentHistoryIndex, currentHistoryIndex) || other.currentHistoryIndex == currentHistoryIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_historyRenderItems),currentHistoryIndex);

@override
String toString() {
  return 'DecorationPalette(historyRenderItems: $historyRenderItems, currentHistoryIndex: $currentHistoryIndex)';
}


}

/// @nodoc
abstract mixin class _$DecorationPaletteCopyWith<$Res> implements $DecorationPaletteCopyWith<$Res> {
  factory _$DecorationPaletteCopyWith(_DecorationPalette value, $Res Function(_DecorationPalette) _then) = __$DecorationPaletteCopyWithImpl;
@override @useResult
$Res call({
 List<List<RenderItem<DecorationItem>>> historyRenderItems, int currentHistoryIndex
});




}
/// @nodoc
class __$DecorationPaletteCopyWithImpl<$Res>
    implements _$DecorationPaletteCopyWith<$Res> {
  __$DecorationPaletteCopyWithImpl(this._self, this._then);

  final _DecorationPalette _self;
  final $Res Function(_DecorationPalette) _then;

/// Create a copy of DecorationPalette
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? historyRenderItems = null,Object? currentHistoryIndex = null,}) {
  return _then(_DecorationPalette(
historyRenderItems: null == historyRenderItems ? _self._historyRenderItems : historyRenderItems // ignore: cast_nullable_to_non_nullable
as List<List<RenderItem<DecorationItem>>>,currentHistoryIndex: null == currentHistoryIndex ? _self.currentHistoryIndex : currentHistoryIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
