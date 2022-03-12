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
class _$FirstEventTearOff {
  const _$FirstEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  OnSave onSave(List<GroupTaskDto> groupTasks) {
    return OnSave(
      groupTasks,
    );
  }

  OnRouteToSecond onRouteToSecond() {
    return const OnRouteToSecond();
  }
}

/// @nodoc
const $FirstEvent = _$FirstEventTearOff();

/// @nodoc
mixin _$FirstEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(List<GroupTaskDto> groupTasks) onSave,
    required TResult Function() onRouteToSecond,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(List<GroupTaskDto> groupTasks)? onSave,
    TResult Function()? onRouteToSecond,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(List<GroupTaskDto> groupTasks)? onSave,
    TResult Function()? onRouteToSecond,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnSave value) onSave,
    required TResult Function(OnRouteToSecond value) onRouteToSecond,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnSave value)? onSave,
    TResult Function(OnRouteToSecond value)? onRouteToSecond,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnSave value)? onSave,
    TResult Function(OnRouteToSecond value)? onRouteToSecond,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstEventCopyWith<$Res> {
  factory $FirstEventCopyWith(
          FirstEvent value, $Res Function(FirstEvent) then) =
      _$FirstEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirstEventCopyWithImpl<$Res> implements $FirstEventCopyWith<$Res> {
  _$FirstEventCopyWithImpl(this._value, this._then);

  final FirstEvent _value;
  // ignore: unused_field
  final $Res Function(FirstEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
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
    return 'FirstEvent.onLoad()';
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
    required TResult Function(List<GroupTaskDto> groupTasks) onSave,
    required TResult Function() onRouteToSecond,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(List<GroupTaskDto> groupTasks)? onSave,
    TResult Function()? onRouteToSecond,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(List<GroupTaskDto> groupTasks)? onSave,
    TResult Function()? onRouteToSecond,
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
    required TResult Function(OnSave value) onSave,
    required TResult Function(OnRouteToSecond value) onRouteToSecond,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnSave value)? onSave,
    TResult Function(OnRouteToSecond value)? onRouteToSecond,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnSave value)? onSave,
    TResult Function(OnRouteToSecond value)? onRouteToSecond,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements FirstEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $OnSaveCopyWith<$Res> {
  factory $OnSaveCopyWith(OnSave value, $Res Function(OnSave) then) =
      _$OnSaveCopyWithImpl<$Res>;
  $Res call({List<GroupTaskDto> groupTasks});
}

/// @nodoc
class _$OnSaveCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $OnSaveCopyWith<$Res> {
  _$OnSaveCopyWithImpl(OnSave _value, $Res Function(OnSave) _then)
      : super(_value, (v) => _then(v as OnSave));

  @override
  OnSave get _value => super._value as OnSave;

  @override
  $Res call({
    Object? groupTasks = freezed,
  }) {
    return _then(OnSave(
      groupTasks == freezed
          ? _value.groupTasks
          : groupTasks // ignore: cast_nullable_to_non_nullable
              as List<GroupTaskDto>,
    ));
  }
}

/// @nodoc

class _$OnSave implements OnSave {
  const _$OnSave(this.groupTasks);

  @override
  final List<GroupTaskDto> groupTasks;

  @override
  String toString() {
    return 'FirstEvent.onSave(groupTasks: $groupTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSave &&
            (identical(other.groupTasks, groupTasks) ||
                const DeepCollectionEquality()
                    .equals(other.groupTasks, groupTasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groupTasks);

  @JsonKey(ignore: true)
  @override
  $OnSaveCopyWith<OnSave> get copyWith =>
      _$OnSaveCopyWithImpl<OnSave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(List<GroupTaskDto> groupTasks) onSave,
    required TResult Function() onRouteToSecond,
  }) {
    return onSave(groupTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(List<GroupTaskDto> groupTasks)? onSave,
    TResult Function()? onRouteToSecond,
  }) {
    return onSave?.call(groupTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(List<GroupTaskDto> groupTasks)? onSave,
    TResult Function()? onRouteToSecond,
    required TResult orElse(),
  }) {
    if (onSave != null) {
      return onSave(groupTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnSave value) onSave,
    required TResult Function(OnRouteToSecond value) onRouteToSecond,
  }) {
    return onSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnSave value)? onSave,
    TResult Function(OnRouteToSecond value)? onRouteToSecond,
  }) {
    return onSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnSave value)? onSave,
    TResult Function(OnRouteToSecond value)? onRouteToSecond,
    required TResult orElse(),
  }) {
    if (onSave != null) {
      return onSave(this);
    }
    return orElse();
  }
}

abstract class OnSave implements FirstEvent {
  const factory OnSave(List<GroupTaskDto> groupTasks) = _$OnSave;

  List<GroupTaskDto> get groupTasks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnSaveCopyWith<OnSave> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnRouteToSecondCopyWith<$Res> {
  factory $OnRouteToSecondCopyWith(
          OnRouteToSecond value, $Res Function(OnRouteToSecond) then) =
      _$OnRouteToSecondCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRouteToSecondCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $OnRouteToSecondCopyWith<$Res> {
  _$OnRouteToSecondCopyWithImpl(
      OnRouteToSecond _value, $Res Function(OnRouteToSecond) _then)
      : super(_value, (v) => _then(v as OnRouteToSecond));

  @override
  OnRouteToSecond get _value => super._value as OnRouteToSecond;
}

/// @nodoc

class _$OnRouteToSecond implements OnRouteToSecond {
  const _$OnRouteToSecond();

  @override
  String toString() {
    return 'FirstEvent.onRouteToSecond()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRouteToSecond);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(List<GroupTaskDto> groupTasks) onSave,
    required TResult Function() onRouteToSecond,
  }) {
    return onRouteToSecond();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(List<GroupTaskDto> groupTasks)? onSave,
    TResult Function()? onRouteToSecond,
  }) {
    return onRouteToSecond?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(List<GroupTaskDto> groupTasks)? onSave,
    TResult Function()? onRouteToSecond,
    required TResult orElse(),
  }) {
    if (onRouteToSecond != null) {
      return onRouteToSecond();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnSave value) onSave,
    required TResult Function(OnRouteToSecond value) onRouteToSecond,
  }) {
    return onRouteToSecond(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnSave value)? onSave,
    TResult Function(OnRouteToSecond value)? onRouteToSecond,
  }) {
    return onRouteToSecond?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnSave value)? onSave,
    TResult Function(OnRouteToSecond value)? onRouteToSecond,
    required TResult orElse(),
  }) {
    if (onRouteToSecond != null) {
      return onRouteToSecond(this);
    }
    return orElse();
  }
}

abstract class OnRouteToSecond implements FirstEvent {
  const factory OnRouteToSecond() = _$OnRouteToSecond;
}
