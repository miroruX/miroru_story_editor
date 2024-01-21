// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'render_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RenderItem<T extends DecorationItem> {
  String? get uuid => throw _privateConstructorUsedError;
  Matrix4 get transform => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RenderItemCopyWith<T, RenderItem<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderItemCopyWith<T extends DecorationItem, $Res> {
  factory $RenderItemCopyWith(
          RenderItem<T> value, $Res Function(RenderItem<T>) then) =
      _$RenderItemCopyWithImpl<T, $Res, RenderItem<T>>;
  @useResult
  $Res call({String? uuid, Matrix4 transform, T data, int order});
}

/// @nodoc
class _$RenderItemCopyWithImpl<T extends DecorationItem, $Res,
    $Val extends RenderItem<T>> implements $RenderItemCopyWith<T, $Res> {
  _$RenderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? transform = null,
    Object? data = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      transform: null == transform
          ? _value.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as Matrix4,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RenderItemImplCopyWith<T extends DecorationItem, $Res>
    implements $RenderItemCopyWith<T, $Res> {
  factory _$$RenderItemImplCopyWith(
          _$RenderItemImpl<T> value, $Res Function(_$RenderItemImpl<T>) then) =
      __$$RenderItemImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String? uuid, Matrix4 transform, T data, int order});
}

/// @nodoc
class __$$RenderItemImplCopyWithImpl<T extends DecorationItem, $Res>
    extends _$RenderItemCopyWithImpl<T, $Res, _$RenderItemImpl<T>>
    implements _$$RenderItemImplCopyWith<T, $Res> {
  __$$RenderItemImplCopyWithImpl(
      _$RenderItemImpl<T> _value, $Res Function(_$RenderItemImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? transform = null,
    Object? data = null,
    Object? order = null,
  }) {
    return _then(_$RenderItemImpl<T>(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      transform: null == transform
          ? _value.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as Matrix4,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RenderItemImpl<T extends DecorationItem> extends _RenderItem<T> {
  const _$RenderItemImpl(
      {this.uuid,
      required this.transform,
      required this.data,
      required this.order})
      : super._();

  @override
  final String? uuid;
  @override
  final Matrix4 transform;
  @override
  final T data;
  @override
  final int order;

  @override
  String toString() {
    return 'RenderItem<$T>(uuid: $uuid, transform: $transform, data: $data, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenderItemImpl<T> &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.transform, transform) ||
                other.transform == transform) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, transform,
      const DeepCollectionEquality().hash(data), order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenderItemImplCopyWith<T, _$RenderItemImpl<T>> get copyWith =>
      __$$RenderItemImplCopyWithImpl<T, _$RenderItemImpl<T>>(this, _$identity);
}

abstract class _RenderItem<T extends DecorationItem> extends RenderItem<T> {
  const factory _RenderItem(
      {final String? uuid,
      required final Matrix4 transform,
      required final T data,
      required final int order}) = _$RenderItemImpl<T>;
  const _RenderItem._() : super._();

  @override
  String? get uuid;
  @override
  Matrix4 get transform;
  @override
  T get data;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$RenderItemImplCopyWith<T, _$RenderItemImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
