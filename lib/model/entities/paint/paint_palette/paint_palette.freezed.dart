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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaintPalette {
  BrushType get brushType => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
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
  $Res call({BrushType brushType, Color color, StrokeOptions? strokeOptions});
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
    Object? brushType = null,
    Object? color = null,
    Object? strokeOptions = freezed,
  }) {
    return _then(_value.copyWith(
      brushType: null == brushType
          ? _value.brushType
          : brushType // ignore: cast_nullable_to_non_nullable
              as BrushType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
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
  $Res call({BrushType brushType, Color color, StrokeOptions? strokeOptions});
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
    Object? brushType = null,
    Object? color = null,
    Object? strokeOptions = freezed,
  }) {
    return _then(_$PaintPaletteImpl(
      brushType: null == brushType
          ? _value.brushType
          : brushType // ignore: cast_nullable_to_non_nullable
              as BrushType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
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
      {this.brushType = BrushType.pen,
      this.color = Colors.black,
      this.strokeOptions})
      : super._();

  @override
  @JsonKey()
  final BrushType brushType;
  @override
  @JsonKey()
  final Color color;
  @override
  final StrokeOptions? strokeOptions;

  @override
  String toString() {
    return 'PaintPalette(brushType: $brushType, color: $color, strokeOptions: $strokeOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaintPaletteImpl &&
            (identical(other.brushType, brushType) ||
                other.brushType == brushType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.strokeOptions, strokeOptions) ||
                other.strokeOptions == strokeOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brushType, color, strokeOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaintPaletteImplCopyWith<_$PaintPaletteImpl> get copyWith =>
      __$$PaintPaletteImplCopyWithImpl<_$PaintPaletteImpl>(this, _$identity);
}

abstract class _PaintPalette extends PaintPalette {
  const factory _PaintPalette(
      {final BrushType brushType,
      final Color color,
      final StrokeOptions? strokeOptions}) = _$PaintPaletteImpl;
  const _PaintPalette._() : super._();

  @override
  BrushType get brushType;
  @override
  Color get color;
  @override
  StrokeOptions? get strokeOptions;
  @override
  @JsonKey(ignore: true)
  _$$PaintPaletteImplCopyWith<_$PaintPaletteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
