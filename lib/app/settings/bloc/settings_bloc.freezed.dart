// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppBrightness brightness) brightnessChanged,
    required TResult Function(TransactionActor actor) login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AppBrightness brightness)? brightnessChanged,
    TResult? Function(TransactionActor actor)? login,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppBrightness brightness)? brightnessChanged,
    TResult Function(TransactionActor actor)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BrightnessChanged value) brightnessChanged,
    required TResult Function(_LoggedIn value) login,
    required TResult Function(_Loggedout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BrightnessChanged value)? brightnessChanged,
    TResult? Function(_LoggedIn value)? login,
    TResult? Function(_Loggedout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BrightnessChanged value)? brightnessChanged,
    TResult Function(_LoggedIn value)? login,
    TResult Function(_Loggedout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SettingsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppBrightness brightness) brightnessChanged,
    required TResult Function(TransactionActor actor) login,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AppBrightness brightness)? brightnessChanged,
    TResult? Function(TransactionActor actor)? login,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppBrightness brightness)? brightnessChanged,
    TResult Function(TransactionActor actor)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BrightnessChanged value) brightnessChanged,
    required TResult Function(_LoggedIn value) login,
    required TResult Function(_Loggedout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BrightnessChanged value)? brightnessChanged,
    TResult? Function(_LoggedIn value)? login,
    TResult? Function(_Loggedout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BrightnessChanged value)? brightnessChanged,
    TResult Function(_LoggedIn value)? login,
    TResult Function(_Loggedout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SettingsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$BrightnessChangedImplCopyWith<$Res> {
  factory _$$BrightnessChangedImplCopyWith(_$BrightnessChangedImpl value,
          $Res Function(_$BrightnessChangedImpl) then) =
      __$$BrightnessChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppBrightness brightness});
}

/// @nodoc
class __$$BrightnessChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$BrightnessChangedImpl>
    implements _$$BrightnessChangedImplCopyWith<$Res> {
  __$$BrightnessChangedImplCopyWithImpl(_$BrightnessChangedImpl _value,
      $Res Function(_$BrightnessChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_$BrightnessChangedImpl(
      null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as AppBrightness,
    ));
  }
}

/// @nodoc

class _$BrightnessChangedImpl implements _BrightnessChanged {
  const _$BrightnessChangedImpl(this.brightness);

  @override
  final AppBrightness brightness;

  @override
  String toString() {
    return 'SettingsEvent.brightnessChanged(brightness: $brightness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrightnessChangedImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrightnessChangedImplCopyWith<_$BrightnessChangedImpl> get copyWith =>
      __$$BrightnessChangedImplCopyWithImpl<_$BrightnessChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppBrightness brightness) brightnessChanged,
    required TResult Function(TransactionActor actor) login,
    required TResult Function() logout,
  }) {
    return brightnessChanged(brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AppBrightness brightness)? brightnessChanged,
    TResult? Function(TransactionActor actor)? login,
    TResult? Function()? logout,
  }) {
    return brightnessChanged?.call(brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppBrightness brightness)? brightnessChanged,
    TResult Function(TransactionActor actor)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (brightnessChanged != null) {
      return brightnessChanged(brightness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BrightnessChanged value) brightnessChanged,
    required TResult Function(_LoggedIn value) login,
    required TResult Function(_Loggedout value) logout,
  }) {
    return brightnessChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BrightnessChanged value)? brightnessChanged,
    TResult? Function(_LoggedIn value)? login,
    TResult? Function(_Loggedout value)? logout,
  }) {
    return brightnessChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BrightnessChanged value)? brightnessChanged,
    TResult Function(_LoggedIn value)? login,
    TResult Function(_Loggedout value)? logout,
    required TResult orElse(),
  }) {
    if (brightnessChanged != null) {
      return brightnessChanged(this);
    }
    return orElse();
  }
}

abstract class _BrightnessChanged implements SettingsEvent {
  const factory _BrightnessChanged(final AppBrightness brightness) =
      _$BrightnessChangedImpl;

  AppBrightness get brightness;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrightnessChangedImplCopyWith<_$BrightnessChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionActor actor});

  $TransactionActorCopyWith<$Res> get actor;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actor = null,
  }) {
    return _then(_$LoggedInImpl(
      null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
    ));
  }

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionActorCopyWith<$Res> get actor {
    return $TransactionActorCopyWith<$Res>(_value.actor, (value) {
      return _then(_value.copyWith(actor: value));
    });
  }
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl(this.actor);

  @override
  final TransactionActor actor;

  @override
  String toString() {
    return 'SettingsEvent.login(actor: $actor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.actor, actor) || other.actor == actor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actor);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppBrightness brightness) brightnessChanged,
    required TResult Function(TransactionActor actor) login,
    required TResult Function() logout,
  }) {
    return login(actor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AppBrightness brightness)? brightnessChanged,
    TResult? Function(TransactionActor actor)? login,
    TResult? Function()? logout,
  }) {
    return login?.call(actor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppBrightness brightness)? brightnessChanged,
    TResult Function(TransactionActor actor)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(actor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BrightnessChanged value) brightnessChanged,
    required TResult Function(_LoggedIn value) login,
    required TResult Function(_Loggedout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BrightnessChanged value)? brightnessChanged,
    TResult? Function(_LoggedIn value)? login,
    TResult? Function(_Loggedout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BrightnessChanged value)? brightnessChanged,
    TResult Function(_LoggedIn value)? login,
    TResult Function(_Loggedout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements SettingsEvent {
  const factory _LoggedIn(final TransactionActor actor) = _$LoggedInImpl;

  TransactionActor get actor;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedoutImplCopyWith<$Res> {
  factory _$$LoggedoutImplCopyWith(
          _$LoggedoutImpl value, $Res Function(_$LoggedoutImpl) then) =
      __$$LoggedoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedoutImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$LoggedoutImpl>
    implements _$$LoggedoutImplCopyWith<$Res> {
  __$$LoggedoutImplCopyWithImpl(
      _$LoggedoutImpl _value, $Res Function(_$LoggedoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoggedoutImpl implements _Loggedout {
  const _$LoggedoutImpl();

  @override
  String toString() {
    return 'SettingsEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppBrightness brightness) brightnessChanged,
    required TResult Function(TransactionActor actor) login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AppBrightness brightness)? brightnessChanged,
    TResult? Function(TransactionActor actor)? login,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppBrightness brightness)? brightnessChanged,
    TResult Function(TransactionActor actor)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BrightnessChanged value) brightnessChanged,
    required TResult Function(_LoggedIn value) login,
    required TResult Function(_Loggedout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BrightnessChanged value)? brightnessChanged,
    TResult? Function(_LoggedIn value)? login,
    TResult? Function(_Loggedout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BrightnessChanged value)? brightnessChanged,
    TResult Function(_LoggedIn value)? login,
    TResult Function(_Loggedout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Loggedout implements SettingsEvent {
  const factory _Loggedout() = _$LoggedoutImpl;
}

/// @nodoc
mixin _$SettingsState {
  Brightness? get brightness => throw _privateConstructorUsedError;
  Account? get account => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({Brightness? brightness, Account? account});

  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = freezed,
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      brightness: freezed == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ) as $Val);
  }

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Brightness? brightness, Account? account});

  @override
  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = freezed,
    Object? account = freezed,
  }) {
    return _then(_$SettingsStateImpl(
      brightness: freezed == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl({this.brightness, this.account});

  @override
  final Brightness? brightness;
  @override
  final Account? account;

  @override
  String toString() {
    return 'SettingsState(brightness: $brightness, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness, account);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {final Brightness? brightness,
      final Account? account}) = _$SettingsStateImpl;

  @override
  Brightness? get brightness;
  @override
  Account? get account;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
