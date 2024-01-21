// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'palette_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaletteState {
  List<List<RenderItem<DecorationItem>>> get historyRenderItems =>
      throw _privateConstructorUsedError;
  bool get isEditingText => throw _privateConstructorUsedError;
  int get currentHistoryIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaletteStateCopyWith<PaletteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaletteStateCopyWith<$Res> {
  factory $PaletteStateCopyWith(
          PaletteState value, $Res Function(PaletteState) then) =
      _$PaletteStateCopyWithImpl<$Res, PaletteState>;
  @useResult
  $Res call(
      {List<List<RenderItem<DecorationItem>>> historyRenderItems,
      bool isEditingText,
      int currentHistoryIndex});
}

/// @nodoc
class _$PaletteStateCopyWithImpl<$Res, $Val extends PaletteState>
    implements $PaletteStateCopyWith<$Res> {
  _$PaletteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyRenderItems = null,
    Object? isEditingText = null,
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
      currentHistoryIndex: null == currentHistoryIndex
          ? _value.currentHistoryIndex
          : currentHistoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaletteStateImplCopyWith<$Res>
    implements $PaletteStateCopyWith<$Res> {
  factory _$$PaletteStateImplCopyWith(
          _$PaletteStateImpl value, $Res Function(_$PaletteStateImpl) then) =
      __$$PaletteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<RenderItem<DecorationItem>>> historyRenderItems,
      bool isEditingText,
      int currentHistoryIndex});
}

/// @nodoc
class __$$PaletteStateImplCopyWithImpl<$Res>
    extends _$PaletteStateCopyWithImpl<$Res, _$PaletteStateImpl>
    implements _$$PaletteStateImplCopyWith<$Res> {
  __$$PaletteStateImplCopyWithImpl(
      _$PaletteStateImpl _value, $Res Function(_$PaletteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyRenderItems = null,
    Object? isEditingText = null,
    Object? currentHistoryIndex = null,
  }) {
    return _then(_$PaletteStateImpl(
      historyRenderItems: null == historyRenderItems
          ? _value._historyRenderItems
          : historyRenderItems // ignore: cast_nullable_to_non_nullable
              as List<List<RenderItem<DecorationItem>>>,
      isEditingText: null == isEditingText
          ? _value.isEditingText
          : isEditingText // ignore: cast_nullable_to_non_nullable
              as bool,
      currentHistoryIndex: null == currentHistoryIndex
          ? _value.currentHistoryIndex
          : currentHistoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaletteStateImpl extends _PaletteState {
  const _$PaletteStateImpl(
      {required final List<List<RenderItem<DecorationItem>>> historyRenderItems,
      required this.isEditingText,
      required this.currentHistoryIndex})
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
  final bool isEditingText;
  @override
  final int currentHistoryIndex;

  @override
  String toString() {
    return 'PaletteState(historyRenderItems: $historyRenderItems, isEditingText: $isEditingText, currentHistoryIndex: $currentHistoryIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaletteStateImpl &&
            const DeepCollectionEquality()
                .equals(other._historyRenderItems, _historyRenderItems) &&
            (identical(other.isEditingText, isEditingText) ||
                other.isEditingText == isEditingText) &&
            (identical(other.currentHistoryIndex, currentHistoryIndex) ||
                other.currentHistoryIndex == currentHistoryIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_historyRenderItems),
      isEditingText,
      currentHistoryIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaletteStateImplCopyWith<_$PaletteStateImpl> get copyWith =>
      __$$PaletteStateImplCopyWithImpl<_$PaletteStateImpl>(this, _$identity);
}

abstract class _PaletteState extends PaletteState {
  const factory _PaletteState(
      {required final List<List<RenderItem<DecorationItem>>> historyRenderItems,
      required final bool isEditingText,
      required final int currentHistoryIndex}) = _$PaletteStateImpl;
  const _PaletteState._() : super._();

  @override
  List<List<RenderItem<DecorationItem>>> get historyRenderItems;
  @override
  bool get isEditingText;
  @override
  int get currentHistoryIndex;
  @override
  @JsonKey(ignore: true)
  _$$PaletteStateImplCopyWith<_$PaletteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
