// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paint_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaintLine {
  List<PointVector> get points => throw _privateConstructorUsedError;
  StrokeOptions get strokeOptions => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  BrushType get brushType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaintLineCopyWith<PaintLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaintLineCopyWith<$Res> {
  factory $PaintLineCopyWith(PaintLine value, $Res Function(PaintLine) then) =
      _$PaintLineCopyWithImpl<$Res, PaintLine>;
  @useResult
  $Res call(
      {List<PointVector> points,
      StrokeOptions strokeOptions,
      Color color,
      BrushType brushType});
}

/// @nodoc
class _$PaintLineCopyWithImpl<$Res, $Val extends PaintLine>
    implements $PaintLineCopyWith<$Res> {
  _$PaintLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? strokeOptions = null,
    Object? color = null,
    Object? brushType = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointVector>,
      strokeOptions: null == strokeOptions
          ? _value.strokeOptions
          : strokeOptions // ignore: cast_nullable_to_non_nullable
              as StrokeOptions,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      brushType: null == brushType
          ? _value.brushType
          : brushType // ignore: cast_nullable_to_non_nullable
              as BrushType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaintLineImplCopyWith<$Res>
    implements $PaintLineCopyWith<$Res> {
  factory _$$PaintLineImplCopyWith(
          _$PaintLineImpl value, $Res Function(_$PaintLineImpl) then) =
      __$$PaintLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PointVector> points,
      StrokeOptions strokeOptions,
      Color color,
      BrushType brushType});
}

/// @nodoc
class __$$PaintLineImplCopyWithImpl<$Res>
    extends _$PaintLineCopyWithImpl<$Res, _$PaintLineImpl>
    implements _$$PaintLineImplCopyWith<$Res> {
  __$$PaintLineImplCopyWithImpl(
      _$PaintLineImpl _value, $Res Function(_$PaintLineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? strokeOptions = null,
    Object? color = null,
    Object? brushType = null,
  }) {
    return _then(_$PaintLineImpl(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointVector>,
      strokeOptions: null == strokeOptions
          ? _value.strokeOptions
          : strokeOptions // ignore: cast_nullable_to_non_nullable
              as StrokeOptions,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      brushType: null == brushType
          ? _value.brushType
          : brushType // ignore: cast_nullable_to_non_nullable
              as BrushType,
    ));
  }
}

/// @nodoc

class _$PaintLineImpl extends _PaintLine {
  const _$PaintLineImpl(
      {final List<PointVector> points = const [],
      required this.strokeOptions,
      this.color = Colors.black,
      this.brushType = BrushType.pen})
      : _points = points,
        super._();

  final List<PointVector> _points;
  @override
  @JsonKey()
  List<PointVector> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final StrokeOptions strokeOptions;
  @override
  @JsonKey()
  final Color color;
  @override
  @JsonKey()
  final BrushType brushType;

  @override
  String toString() {
    return 'PaintLine(points: $points, strokeOptions: $strokeOptions, color: $color, brushType: $brushType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaintLineImpl &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.strokeOptions, strokeOptions) ||
                other.strokeOptions == strokeOptions) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.brushType, brushType) ||
                other.brushType == brushType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_points),
      strokeOptions,
      color,
      brushType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaintLineImplCopyWith<_$PaintLineImpl> get copyWith =>
      __$$PaintLineImplCopyWithImpl<_$PaintLineImpl>(this, _$identity);
}

abstract class _PaintLine extends PaintLine {
  const factory _PaintLine(
      {final List<PointVector> points,
      required final StrokeOptions strokeOptions,
      final Color color,
      final BrushType brushType}) = _$PaintLineImpl;
  const _PaintLine._() : super._();

  @override
  List<PointVector> get points;
  @override
  StrokeOptions get strokeOptions;
  @override
  Color get color;
  @override
  BrushType get brushType;
  @override
  @JsonKey(ignore: true)
  _$$PaintLineImplCopyWith<_$PaintLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
