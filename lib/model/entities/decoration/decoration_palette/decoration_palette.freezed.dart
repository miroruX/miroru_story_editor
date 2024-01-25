// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoration_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DecorationPalette {
  List<List<RenderItem<DecorationItem>>> get historyRenderItems =>
      throw _privateConstructorUsedError;
  bool get isEditingText => throw _privateConstructorUsedError;
  bool get isMovingItem => throw _privateConstructorUsedError;
  int get currentHistoryIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DecorationPaletteCopyWith<DecorationPalette> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecorationPaletteCopyWith<$Res> {
  factory $DecorationPaletteCopyWith(
          DecorationPalette value, $Res Function(DecorationPalette) then) =
      _$DecorationPaletteCopyWithImpl<$Res, DecorationPalette>;
  @useResult
  $Res call(
      {List<List<RenderItem<DecorationItem>>> historyRenderItems,
      bool isEditingText,
      bool isMovingItem,
      int currentHistoryIndex});
}

/// @nodoc
class _$DecorationPaletteCopyWithImpl<$Res, $Val extends DecorationPalette>
    implements $DecorationPaletteCopyWith<$Res> {
  _$DecorationPaletteCopyWithImpl(this._value, this._then);

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
abstract class _$$DecorationPaletteImplCopyWith<$Res>
    implements $DecorationPaletteCopyWith<$Res> {
  factory _$$DecorationPaletteImplCopyWith(_$DecorationPaletteImpl value,
          $Res Function(_$DecorationPaletteImpl) then) =
      __$$DecorationPaletteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<RenderItem<DecorationItem>>> historyRenderItems,
      bool isEditingText,
      bool isMovingItem,
      int currentHistoryIndex});
}

/// @nodoc
class __$$DecorationPaletteImplCopyWithImpl<$Res>
    extends _$DecorationPaletteCopyWithImpl<$Res, _$DecorationPaletteImpl>
    implements _$$DecorationPaletteImplCopyWith<$Res> {
  __$$DecorationPaletteImplCopyWithImpl(_$DecorationPaletteImpl _value,
      $Res Function(_$DecorationPaletteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyRenderItems = null,
    Object? isEditingText = null,
    Object? isMovingItem = null,
    Object? currentHistoryIndex = null,
  }) {
    return _then(_$DecorationPaletteImpl(
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

class _$DecorationPaletteImpl extends _DecorationPalette {
  const _$DecorationPaletteImpl(
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
    return 'DecorationPalette(historyRenderItems: $historyRenderItems, isEditingText: $isEditingText, isMovingItem: $isMovingItem, currentHistoryIndex: $currentHistoryIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecorationPaletteImpl &&
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
  _$$DecorationPaletteImplCopyWith<_$DecorationPaletteImpl> get copyWith =>
      __$$DecorationPaletteImplCopyWithImpl<_$DecorationPaletteImpl>(
          this, _$identity);
}

abstract class _DecorationPalette extends DecorationPalette {
  const factory _DecorationPalette(
      {required final List<List<RenderItem<DecorationItem>>> historyRenderItems,
      final bool isEditingText,
      final bool isMovingItem,
      final int currentHistoryIndex}) = _$DecorationPaletteImpl;
  const _DecorationPalette._() : super._();

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
  _$$DecorationPaletteImplCopyWith<_$DecorationPaletteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
