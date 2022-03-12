// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SecondEventTearOff {
  const _$SecondEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }
}

/// @nodoc
const $SecondEvent = _$SecondEventTearOff();

/// @nodoc
mixin _$SecondEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondEventCopyWith<$Res> {
  factory $SecondEventCopyWith(
          SecondEvent value, $Res Function(SecondEvent) then) =
      _$SecondEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecondEventCopyWithImpl<$Res> implements $SecondEventCopyWith<$Res> {
  _$SecondEventCopyWithImpl(this._value, this._then);

  final SecondEvent _value;
  // ignore: unused_field
  final $Res Function(SecondEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$SecondEventCopyWithImpl<$Res>
    implements $OnLoadCopyWith<$Res> {
  _$OnLoadCopyWithImpl(OnLoad _value, $Res Function(OnLoad) _then)
      : super(_value, (v) => _then(v as OnLoad));

  @override
  OnLoad get _value => super._value as OnLoad;
}

/// @nodoc

class _$OnLoad implements OnLoad {
  const _$OnLoad();

  @override
  String toString() {
    return 'SecondEvent.onLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements SecondEvent {
  const factory OnLoad() = _$OnLoad;
}
