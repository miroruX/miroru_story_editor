// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Palette {
  bool get isPainting => throw _privateConstructorUsedError;
  bool get isEditingText => throw _privateConstructorUsedError;
  bool get isMovingItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaletteCopyWith<Palette> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaletteCopyWith<$Res> {
  factory $PaletteCopyWith(Palette value, $Res Function(Palette) then) =
      _$PaletteCopyWithImpl<$Res, Palette>;
  @useResult
  $Res call({bool isPainting, bool isEditingText, bool isMovingItem});
}

/// @nodoc
class _$PaletteCopyWithImpl<$Res, $Val extends Palette>
    implements $PaletteCopyWith<$Res> {
  _$PaletteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPainting = null,
    Object? isEditingText = null,
    Object? isMovingItem = null,
  }) {
    return _then(_value.copyWith(
      isPainting: null == isPainting
          ? _value.isPainting
          : isPainting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditingText: null == isEditingText
          ? _value.isEditingText
          : isEditingText // ignore: cast_nullable_to_non_nullable
              as bool,
      isMovingItem: null == isMovingItem
          ? _value.isMovingItem
          : isMovingItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaletteImplCopyWith<$Res> implements $PaletteCopyWith<$Res> {
  factory _$$PaletteImplCopyWith(
          _$PaletteImpl value, $Res Function(_$PaletteImpl) then) =
      __$$PaletteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPainting, bool isEditingText, bool isMovingItem});
}

/// @nodoc
class __$$PaletteImplCopyWithImpl<$Res>
    extends _$PaletteCopyWithImpl<$Res, _$PaletteImpl>
    implements _$$PaletteImplCopyWith<$Res> {
  __$$PaletteImplCopyWithImpl(
      _$PaletteImpl _value, $Res Function(_$PaletteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPainting = null,
    Object? isEditingText = null,
    Object? isMovingItem = null,
  }) {
    return _then(_$PaletteImpl(
      isPainting: null == isPainting
          ? _value.isPainting
          : isPainting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditingText: null == isEditingText
          ? _value.isEditingText
          : isEditingText // ignore: cast_nullable_to_non_nullable
              as bool,
      isMovingItem: null == isMovingItem
          ? _value.isMovingItem
          : isMovingItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaletteImpl extends _Palette {
  const _$PaletteImpl(
      {this.isPainting = false,
      this.isEditingText = false,
      this.isMovingItem = false})
      : super._();

  @override
  @JsonKey()
  final bool isPainting;
  @override
  @JsonKey()
  final bool isEditingText;
  @override
  @JsonKey()
  final bool isMovingItem;

  @override
  String toString() {
    return 'Palette(isPainting: $isPainting, isEditingText: $isEditingText, isMovingItem: $isMovingItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaletteImpl &&
            (identical(other.isPainting, isPainting) ||
                other.isPainting == isPainting) &&
            (identical(other.isEditingText, isEditingText) ||
                other.isEditingText == isEditingText) &&
            (identical(other.isMovingItem, isMovingItem) ||
                other.isMovingItem == isMovingItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isPainting, isEditingText, isMovingItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaletteImplCopyWith<_$PaletteImpl> get copyWith =>
      __$$PaletteImplCopyWithImpl<_$PaletteImpl>(this, _$identity);
}

abstract class _Palette extends Palette {
  const factory _Palette(
      {final bool isPainting,
      final bool isEditingText,
      final bool isMovingItem}) = _$PaletteImpl;
  const _Palette._() : super._();

  @override
  bool get isPainting;
  @override
  bool get isEditingText;
  @override
  bool get isMovingItem;
  @override
  @JsonKey(ignore: true)
  _$$PaletteImplCopyWith<_$PaletteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
