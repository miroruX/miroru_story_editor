// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoration_emoji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DecorationEmoji {

 String? get emoji;
/// Create a copy of DecorationEmoji
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecorationEmojiCopyWith<DecorationEmoji> get copyWith => _$DecorationEmojiCopyWithImpl<DecorationEmoji>(this as DecorationEmoji, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecorationEmoji&&(identical(other.emoji, emoji) || other.emoji == emoji));
}


@override
int get hashCode => Object.hash(runtimeType,emoji);

@override
String toString() {
  return 'DecorationEmoji(emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class $DecorationEmojiCopyWith<$Res>  {
  factory $DecorationEmojiCopyWith(DecorationEmoji value, $Res Function(DecorationEmoji) _then) = _$DecorationEmojiCopyWithImpl;
@useResult
$Res call({
 String? emoji
});




}
/// @nodoc
class _$DecorationEmojiCopyWithImpl<$Res>
    implements $DecorationEmojiCopyWith<$Res> {
  _$DecorationEmojiCopyWithImpl(this._self, this._then);

  final DecorationEmoji _self;
  final $Res Function(DecorationEmoji) _then;

/// Create a copy of DecorationEmoji
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emoji = freezed,}) {
  return _then(_self.copyWith(
emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DecorationEmoji].
extension DecorationEmojiPatterns on DecorationEmoji {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecorationEmoji value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecorationEmoji() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecorationEmoji value)  $default,){
final _that = this;
switch (_that) {
case _DecorationEmoji():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecorationEmoji value)?  $default,){
final _that = this;
switch (_that) {
case _DecorationEmoji() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? emoji)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecorationEmoji() when $default != null:
return $default(_that.emoji);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? emoji)  $default,) {final _that = this;
switch (_that) {
case _DecorationEmoji():
return $default(_that.emoji);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? emoji)?  $default,) {final _that = this;
switch (_that) {
case _DecorationEmoji() when $default != null:
return $default(_that.emoji);case _:
  return null;

}
}

}

/// @nodoc


class _DecorationEmoji extends DecorationEmoji {
  const _DecorationEmoji({this.emoji}): super._();
  

@override final  String? emoji;

/// Create a copy of DecorationEmoji
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecorationEmojiCopyWith<_DecorationEmoji> get copyWith => __$DecorationEmojiCopyWithImpl<_DecorationEmoji>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecorationEmoji&&(identical(other.emoji, emoji) || other.emoji == emoji));
}


@override
int get hashCode => Object.hash(runtimeType,emoji);

@override
String toString() {
  return 'DecorationEmoji(emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class _$DecorationEmojiCopyWith<$Res> implements $DecorationEmojiCopyWith<$Res> {
  factory _$DecorationEmojiCopyWith(_DecorationEmoji value, $Res Function(_DecorationEmoji) _then) = __$DecorationEmojiCopyWithImpl;
@override @useResult
$Res call({
 String? emoji
});




}
/// @nodoc
class __$DecorationEmojiCopyWithImpl<$Res>
    implements _$DecorationEmojiCopyWith<$Res> {
  __$DecorationEmojiCopyWithImpl(this._self, this._then);

  final _DecorationEmoji _self;
  final $Res Function(_DecorationEmoji) _then;

/// Create a copy of DecorationEmoji
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emoji = freezed,}) {
  return _then(_DecorationEmoji(
emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
