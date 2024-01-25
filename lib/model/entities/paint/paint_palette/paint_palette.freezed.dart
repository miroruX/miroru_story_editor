// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paint_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaintPalette {
  List<PaintLine> get lines => throw _privateConstructorUsedError;
  BrushType get brushType => throw _privateConstructorUsedError;
  String? get colorCode => throw _privateConstructorUsedError;
  StrokeOptions? get strokeOptions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaintPaletteCopyWith<PaintPalette> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaintPaletteCopyWith<$Res> {
  factory $PaintPaletteCopyWith(
          PaintPalette value, $Res Function(PaintPalette) then) =
      _$PaintPaletteCopyWithImpl<$Res, PaintPalette>;
  @useResult
  $Res call(
      {List<PaintLine> lines,
      BrushType brushType,
      String? colorCode,
      StrokeOptions? strokeOptions});
}

/// @nodoc
class _$PaintPaletteCopyWithImpl<$Res, $Val extends PaintPalette>
    implements $PaintPaletteCopyWith<$Res> {
  _$PaintPaletteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
    Object? brushType = null,
    Object? colorCode = freezed,
    Object? strokeOptions = freezed,
  }) {
    return _then(_value.copyWith(
      lines: null == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<PaintLine>,
      brushType: null == brushType
          ? _value.brushType
          : brushType // ignore: cast_nullable_to_non_nullable
              as BrushType,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      strokeOptions: freezed == strokeOptions
          ? _value.strokeOptions
          : strokeOptions // ignore: cast_nullable_to_non_nullable
              as StrokeOptions?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaintPaletteImplCopyWith<$Res>
    implements $PaintPaletteCopyWith<$Res> {
  factory _$$PaintPaletteImplCopyWith(
          _$PaintPaletteImpl value, $Res Function(_$PaintPaletteImpl) then) =
      __$$PaintPaletteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PaintLine> lines,
      BrushType brushType,
      String? colorCode,
      StrokeOptions? strokeOptions});
}

/// @nodoc
class __$$PaintPaletteImplCopyWithImpl<$Res>
    extends _$PaintPaletteCopyWithImpl<$Res, _$PaintPaletteImpl>
    implements _$$PaintPaletteImplCopyWith<$Res> {
  __$$PaintPaletteImplCopyWithImpl(
      _$PaintPaletteImpl _value, $Res Function(_$PaintPaletteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
    Object? brushType = null,
    Object? colorCode = freezed,
    Object? strokeOptions = freezed,
  }) {
    return _then(_$PaintPaletteImpl(
      lines: null == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<PaintLine>,
      brushType: null == brushType
          ? _value.brushType
          : brushType // ignore: cast_nullable_to_non_nullable
              as BrushType,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      strokeOptions: freezed == strokeOptions
          ? _value.strokeOptions
          : strokeOptions // ignore: cast_nullable_to_non_nullable
              as StrokeOptions?,
    ));
  }
}

/// @nodoc

class _$PaintPaletteImpl extends _PaintPalette {
  const _$PaintPaletteImpl(
      {required final List<PaintLine> lines,
      this.brushType = BrushType.pen,
      this.colorCode,
      this.strokeOptions})
      : _lines = lines,
        super._();

  final List<PaintLine> _lines;
  @override
  List<PaintLine> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  @JsonKey()
  final BrushType brushType;
  @override
  final String? colorCode;
  @override
  final StrokeOptions? strokeOptions;

  @override
  String toString() {
    return 'PaintPalette(lines: $lines, brushType: $brushType, colorCode: $colorCode, strokeOptions: $strokeOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaintPaletteImpl &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.brushType, brushType) ||
                other.brushType == brushType) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.strokeOptions, strokeOptions) ||
                other.strokeOptions == strokeOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lines),
      brushType,
      colorCode,
      strokeOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaintPaletteImplCopyWith<_$PaintPaletteImpl> get copyWith =>
      __$$PaintPaletteImplCopyWithImpl<_$PaintPaletteImpl>(this, _$identity);
}

abstract class _PaintPalette extends PaintPalette {
  const factory _PaintPalette(
      {required final List<PaintLine> lines,
      final BrushType brushType,
      final String? colorCode,
      final StrokeOptions? strokeOptions}) = _$PaintPaletteImpl;
  const _PaintPalette._() : super._();

  @override
  List<PaintLine> get lines;
  @override
  BrushType get brushType;
  @override
  String? get colorCode;
  @override
  StrokeOptions? get strokeOptions;
  @override
  @JsonKey(ignore: true)
  _$$PaintPaletteImplCopyWith<_$PaintPaletteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
