// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoration_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DecorationText {

 String? get text; double? get fontSize; String? get fontFamily; String? get colorCode; String? get backgroundColorCode; String? get textAlign;
/// Create a copy of DecorationText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecorationTextCopyWith<DecorationText> get copyWith => _$DecorationTextCopyWithImpl<DecorationText>(this as DecorationText, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecorationText&&(identical(other.text, text) || other.text == text)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily)&&(identical(other.colorCode, colorCode) || other.colorCode == colorCode)&&(identical(other.backgroundColorCode, backgroundColorCode) || other.backgroundColorCode == backgroundColorCode)&&(identical(other.textAlign, textAlign) || other.textAlign == textAlign));
}


@override
int get hashCode => Object.hash(runtimeType,text,fontSize,fontFamily,colorCode,backgroundColorCode,textAlign);

@override
String toString() {
  return 'DecorationText(text: $text, fontSize: $fontSize, fontFamily: $fontFamily, colorCode: $colorCode, backgroundColorCode: $backgroundColorCode, textAlign: $textAlign)';
}


}

/// @nodoc
abstract mixin class $DecorationTextCopyWith<$Res>  {
  factory $DecorationTextCopyWith(DecorationText value, $Res Function(DecorationText) _then) = _$DecorationTextCopyWithImpl;
@useResult
$Res call({
 String? text, double? fontSize, String? fontFamily, String? colorCode, String? backgroundColorCode, String? textAlign
});




}
/// @nodoc
class _$DecorationTextCopyWithImpl<$Res>
    implements $DecorationTextCopyWith<$Res> {
  _$DecorationTextCopyWithImpl(this._self, this._then);

  final DecorationText _self;
  final $Res Function(DecorationText) _then;

/// Create a copy of DecorationText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? fontSize = freezed,Object? fontFamily = freezed,Object? colorCode = freezed,Object? backgroundColorCode = freezed,Object? textAlign = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,fontSize: freezed == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double?,fontFamily: freezed == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as String?,colorCode: freezed == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String?,backgroundColorCode: freezed == backgroundColorCode ? _self.backgroundColorCode : backgroundColorCode // ignore: cast_nullable_to_non_nullable
as String?,textAlign: freezed == textAlign ? _self.textAlign : textAlign // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DecorationText].
extension DecorationTextPatterns on DecorationText {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecorationText value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecorationText() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecorationText value)  $default,){
final _that = this;
switch (_that) {
case _DecorationText():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecorationText value)?  $default,){
final _that = this;
switch (_that) {
case _DecorationText() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? text,  double? fontSize,  String? fontFamily,  String? colorCode,  String? backgroundColorCode,  String? textAlign)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecorationText() when $default != null:
return $default(_that.text,_that.fontSize,_that.fontFamily,_that.colorCode,_that.backgroundColorCode,_that.textAlign);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? text,  double? fontSize,  String? fontFamily,  String? colorCode,  String? backgroundColorCode,  String? textAlign)  $default,) {final _that = this;
switch (_that) {
case _DecorationText():
return $default(_that.text,_that.fontSize,_that.fontFamily,_that.colorCode,_that.backgroundColorCode,_that.textAlign);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? text,  double? fontSize,  String? fontFamily,  String? colorCode,  String? backgroundColorCode,  String? textAlign)?  $default,) {final _that = this;
switch (_that) {
case _DecorationText() when $default != null:
return $default(_that.text,_that.fontSize,_that.fontFamily,_that.colorCode,_that.backgroundColorCode,_that.textAlign);case _:
  return null;

}
}

}

/// @nodoc


class _DecorationText extends DecorationText {
  const _DecorationText({this.text, this.fontSize, this.fontFamily, this.colorCode, this.backgroundColorCode, this.textAlign}): super._();
  

@override final  String? text;
@override final  double? fontSize;
@override final  String? fontFamily;
@override final  String? colorCode;
@override final  String? backgroundColorCode;
@override final  String? textAlign;

/// Create a copy of DecorationText
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecorationTextCopyWith<_DecorationText> get copyWith => __$DecorationTextCopyWithImpl<_DecorationText>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecorationText&&(identical(other.text, text) || other.text == text)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily)&&(identical(other.colorCode, colorCode) || other.colorCode == colorCode)&&(identical(other.backgroundColorCode, backgroundColorCode) || other.backgroundColorCode == backgroundColorCode)&&(identical(other.textAlign, textAlign) || other.textAlign == textAlign));
}


@override
int get hashCode => Object.hash(runtimeType,text,fontSize,fontFamily,colorCode,backgroundColorCode,textAlign);

@override
String toString() {
  return 'DecorationText(text: $text, fontSize: $fontSize, fontFamily: $fontFamily, colorCode: $colorCode, backgroundColorCode: $backgroundColorCode, textAlign: $textAlign)';
}


}

/// @nodoc
abstract mixin class _$DecorationTextCopyWith<$Res> implements $DecorationTextCopyWith<$Res> {
  factory _$DecorationTextCopyWith(_DecorationText value, $Res Function(_DecorationText) _then) = __$DecorationTextCopyWithImpl;
@override @useResult
$Res call({
 String? text, double? fontSize, String? fontFamily, String? colorCode, String? backgroundColorCode, String? textAlign
});




}
/// @nodoc
class __$DecorationTextCopyWithImpl<$Res>
    implements _$DecorationTextCopyWith<$Res> {
  __$DecorationTextCopyWithImpl(this._self, this._then);

  final _DecorationText _self;
  final $Res Function(_DecorationText) _then;

/// Create a copy of DecorationText
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? fontSize = freezed,Object? fontFamily = freezed,Object? colorCode = freezed,Object? backgroundColorCode = freezed,Object? textAlign = freezed,}) {
  return _then(_DecorationText(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,fontSize: freezed == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double?,fontFamily: freezed == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as String?,colorCode: freezed == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String?,backgroundColorCode: freezed == backgroundColorCode ? _self.backgroundColorCode : backgroundColorCode // ignore: cast_nullable_to_non_nullable
as String?,textAlign: freezed == textAlign ? _self.textAlign : textAlign // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
