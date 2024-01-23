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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Palette {
  List<List<RenderItem<DecorationItem>>> get historyRenderItems =>
      throw _privateConstructorUsedError;
  bool get isEditingText => throw _privateConstructorUsedError;
  bool get isMovingItem => throw _privateConstructorUsedError;
  int get currentHistoryIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaletteCopyWith<Palette> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaletteCopyWith<$Res> {
  factory $PaletteCopyWith(Palette value, $Res Function(Palette) then) =
      _$PaletteCopyWithImpl<$Res, Palette>;
  @useResult
  $Res call(
      {List<List<RenderItem<DecorationItem>>> historyRenderItems,
      bool isEditingText,
      bool isMovingItem,
      int currentHistoryIndex});
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
    Object? historyRenderItems = null,
    Object? isEditingText = null,
    Object? isMovingItem = null,
    Object? currentHistoryIndex = null,
  }) {
    return _then(_value.copyWith(
      historyRenderItems: null == historyRenderItems
          ? _value.historyRenderItems
          : historyRenderItems // ignore: cast_nullable_to_non_nullable
              as List<List<RenderItem<DecorationItem>>>,
      isEditingText: null == isEditingText
          ? _value.isEditingText
          : isEditingText // ignore: cast_nullable_to_non_nullable
              as bool,
      isMovingItem: null == isMovingItem
          ? _value.isMovingItem
          : isMovingItem // ignore: cast_nullable_to_non_nullable
              as bool,
      currentHistoryIndex: null == currentHistoryIndex
          ? _value.currentHistoryIndex
          : currentHistoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {List<List<RenderItem<DecorationItem>>> historyRenderItems,
      bool isEditingText,
      bool isMovingItem,
      int currentHistoryIndex});
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
    Object? historyRenderItems = null,
    Object? isEditingText = null,
    Object? isMovingItem = null,
    Object? currentHistoryIndex = null,
  }) {
    return _then(_$PaletteImpl(
      historyRenderItems: null == historyRenderItems
          ? _value._historyRenderItems
          : historyRenderItems // ignore: cast_nullable_to_non_nullable
              as List<List<RenderItem<DecorationItem>>>,
      isEditingText: null == isEditingText
          ? _value.isEditingText
          : isEditingText // ignore: cast_nullable_to_non_nullable
              as bool,
      isMovingItem: null == isMovingItem
          ? _value.isMovingItem
          : isMovingItem // ignore: cast_nullable_to_non_nullable
              as bool,
      currentHistoryIndex: null == currentHistoryIndex
          ? _value.currentHistoryIndex
          : currentHistoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaletteImpl extends _Palette {
  const _$PaletteImpl(
      {required final List<List<RenderItem<DecorationItem>>> historyRenderItems,
      this.isEditingText = false,
      this.isMovingItem = false,
      this.currentHistoryIndex = 0})
      : _historyRenderItems = historyRenderItems,
        super._();

  final List<List<RenderItem<DecorationItem>>> _historyRenderItems;
  @override
  List<List<RenderItem<DecorationItem>>> get historyRenderItems {
    if (_historyRenderItems is EqualUnmodifiableListView)
      return _historyRenderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyRenderItems);
  }

  @override
  @JsonKey()
  final bool isEditingText;
  @override
  @JsonKey()
  final bool isMovingItem;
  @override
  @JsonKey()
  final int currentHistoryIndex;

  @override
  String toString() {
    return 'Palette(historyRenderItems: $historyRenderItems, isEditingText: $isEditingText, isMovingItem: $isMovingItem, currentHistoryIndex: $currentHistoryIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaletteImpl &&
            const DeepCollectionEquality()
                .equals(other._historyRenderItems, _historyRenderItems) &&
            (identical(other.isEditingText, isEditingText) ||
                other.isEditingText == isEditingText) &&
            (identical(other.isMovingItem, isMovingItem) ||
                other.isMovingItem == isMovingItem) &&
            (identical(other.currentHistoryIndex, currentHistoryIndex) ||
                other.currentHistoryIndex == currentHistoryIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_historyRenderItems),
      isEditingText,
      isMovingItem,
      currentHistoryIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaletteImplCopyWith<_$PaletteImpl> get copyWith =>
      __$$PaletteImplCopyWithImpl<_$PaletteImpl>(this, _$identity);
}

abstract class _Palette extends Palette {
  const factory _Palette(
      {required final List<List<RenderItem<DecorationItem>>> historyRenderItems,
      final bool isEditingText,
      final bool isMovingItem,
      final int currentHistoryIndex}) = _$PaletteImpl;
  const _Palette._() : super._();

  @override
  List<List<RenderItem<DecorationItem>>> get historyRenderItems;
  @override
  bool get isEditingText;
  @override
  bool get isMovingItem;
  @override
  int get currentHistoryIndex;
  @override
  @JsonKey(ignore: true)
  _$$PaletteImplCopyWith<_$PaletteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
