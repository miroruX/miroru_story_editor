// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'render_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RenderItem<T extends DecorationItem> {

 String? get uuid; Matrix4 get transform; T get data; int get order; bool get deletePosition;
/// Create a copy of RenderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RenderItemCopyWith<T, RenderItem<T>> get copyWith => _$RenderItemCopyWithImpl<T, RenderItem<T>>(this as RenderItem<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenderItem<T>&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.transform, transform) || other.transform == transform)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.order, order) || other.order == order)&&(identical(other.deletePosition, deletePosition) || other.deletePosition == deletePosition));
}


@override
int get hashCode => Object.hash(runtimeType,uuid,transform,const DeepCollectionEquality().hash(data),order,deletePosition);

@override
String toString() {
  return 'RenderItem<$T>(uuid: $uuid, transform: $transform, data: $data, order: $order, deletePosition: $deletePosition)';
}


}

/// @nodoc
abstract mixin class $RenderItemCopyWith<T extends DecorationItem,$Res>  {
  factory $RenderItemCopyWith(RenderItem<T> value, $Res Function(RenderItem<T>) _then) = _$RenderItemCopyWithImpl;
@useResult
$Res call({
 String? uuid, Matrix4 transform, T data, int order, bool deletePosition
});




}
/// @nodoc
class _$RenderItemCopyWithImpl<T extends DecorationItem,$Res>
    implements $RenderItemCopyWith<T, $Res> {
  _$RenderItemCopyWithImpl(this._self, this._then);

  final RenderItem<T> _self;
  final $Res Function(RenderItem<T>) _then;

/// Create a copy of RenderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uuid = freezed,Object? transform = null,Object? data = null,Object? order = null,Object? deletePosition = null,}) {
  return _then(_self.copyWith(
uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,transform: null == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as Matrix4,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,deletePosition: null == deletePosition ? _self.deletePosition : deletePosition // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RenderItem].
extension RenderItemPatterns<T extends DecorationItem> on RenderItem<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RenderItem<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RenderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RenderItem<T> value)  $default,){
final _that = this;
switch (_that) {
case _RenderItem():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RenderItem<T> value)?  $default,){
final _that = this;
switch (_that) {
case _RenderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? uuid,  Matrix4 transform,  T data,  int order,  bool deletePosition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RenderItem() when $default != null:
return $default(_that.uuid,_that.transform,_that.data,_that.order,_that.deletePosition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? uuid,  Matrix4 transform,  T data,  int order,  bool deletePosition)  $default,) {final _that = this;
switch (_that) {
case _RenderItem():
return $default(_that.uuid,_that.transform,_that.data,_that.order,_that.deletePosition);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? uuid,  Matrix4 transform,  T data,  int order,  bool deletePosition)?  $default,) {final _that = this;
switch (_that) {
case _RenderItem() when $default != null:
return $default(_that.uuid,_that.transform,_that.data,_that.order,_that.deletePosition);case _:
  return null;

}
}

}

/// @nodoc


class _RenderItem<T extends DecorationItem> extends RenderItem<T> {
  const _RenderItem({required this.uuid, required this.transform, required this.data, required this.order, this.deletePosition = false}): super._();
  

@override final  String? uuid;
@override final  Matrix4 transform;
@override final  T data;
@override final  int order;
@override@JsonKey() final  bool deletePosition;

/// Create a copy of RenderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RenderItemCopyWith<T, _RenderItem<T>> get copyWith => __$RenderItemCopyWithImpl<T, _RenderItem<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RenderItem<T>&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.transform, transform) || other.transform == transform)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.order, order) || other.order == order)&&(identical(other.deletePosition, deletePosition) || other.deletePosition == deletePosition));
}


@override
int get hashCode => Object.hash(runtimeType,uuid,transform,const DeepCollectionEquality().hash(data),order,deletePosition);

@override
String toString() {
  return 'RenderItem<$T>(uuid: $uuid, transform: $transform, data: $data, order: $order, deletePosition: $deletePosition)';
}


}

/// @nodoc
abstract mixin class _$RenderItemCopyWith<T extends DecorationItem,$Res> implements $RenderItemCopyWith<T, $Res> {
  factory _$RenderItemCopyWith(_RenderItem<T> value, $Res Function(_RenderItem<T>) _then) = __$RenderItemCopyWithImpl;
@override @useResult
$Res call({
 String? uuid, Matrix4 transform, T data, int order, bool deletePosition
});




}
/// @nodoc
class __$RenderItemCopyWithImpl<T extends DecorationItem,$Res>
    implements _$RenderItemCopyWith<T, $Res> {
  __$RenderItemCopyWithImpl(this._self, this._then);

  final _RenderItem<T> _self;
  final $Res Function(_RenderItem<T>) _then;

/// Create a copy of RenderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uuid = freezed,Object? transform = null,Object? data = null,Object? order = null,Object? deletePosition = null,}) {
  return _then(_RenderItem<T>(
uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,transform: null == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as Matrix4,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,deletePosition: null == deletePosition ? _self.deletePosition : deletePosition // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
