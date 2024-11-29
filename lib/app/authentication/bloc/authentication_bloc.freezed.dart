// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initializeWalletConnect,
    required TResult Function(String publicKey) connectWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initializeWalletConnect,
    TResult? Function(String publicKey)? connectWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initializeWalletConnect,
    TResult Function(String publicKey)? connectWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeWalletConnect value)
        initializeWalletConnect,
    required TResult Function(_ConnectWallet value) connectWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeWalletConnect value)? initializeWalletConnect,
    TResult? Function(_ConnectWallet value)? connectWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeWalletConnect value)? initializeWalletConnect,
    TResult Function(_ConnectWallet value)? connectWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationEvent
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
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.started()';
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
    required TResult Function() initializeWalletConnect,
    required TResult Function(String publicKey) connectWallet,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initializeWalletConnect,
    TResult? Function(String publicKey)? connectWallet,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initializeWalletConnect,
    TResult Function(String publicKey)? connectWallet,
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
    required TResult Function(_InitializeWalletConnect value)
        initializeWalletConnect,
    required TResult Function(_ConnectWallet value) connectWallet,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeWalletConnect value)? initializeWalletConnect,
    TResult? Function(_ConnectWallet value)? connectWallet,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeWalletConnect value)? initializeWalletConnect,
    TResult Function(_ConnectWallet value)? connectWallet,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$InitializeWalletConnectImplCopyWith<$Res> {
  factory _$$InitializeWalletConnectImplCopyWith(
          _$InitializeWalletConnectImpl value,
          $Res Function(_$InitializeWalletConnectImpl) then) =
      __$$InitializeWalletConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeWalletConnectImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$InitializeWalletConnectImpl>
    implements _$$InitializeWalletConnectImplCopyWith<$Res> {
  __$$InitializeWalletConnectImplCopyWithImpl(
      _$InitializeWalletConnectImpl _value,
      $Res Function(_$InitializeWalletConnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeWalletConnectImpl implements _InitializeWalletConnect {
  const _$InitializeWalletConnectImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.initializeWalletConnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeWalletConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initializeWalletConnect,
    required TResult Function(String publicKey) connectWallet,
  }) {
    return initializeWalletConnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initializeWalletConnect,
    TResult? Function(String publicKey)? connectWallet,
  }) {
    return initializeWalletConnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initializeWalletConnect,
    TResult Function(String publicKey)? connectWallet,
    required TResult orElse(),
  }) {
    if (initializeWalletConnect != null) {
      return initializeWalletConnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeWalletConnect value)
        initializeWalletConnect,
    required TResult Function(_ConnectWallet value) connectWallet,
  }) {
    return initializeWalletConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeWalletConnect value)? initializeWalletConnect,
    TResult? Function(_ConnectWallet value)? connectWallet,
  }) {
    return initializeWalletConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeWalletConnect value)? initializeWalletConnect,
    TResult Function(_ConnectWallet value)? connectWallet,
    required TResult orElse(),
  }) {
    if (initializeWalletConnect != null) {
      return initializeWalletConnect(this);
    }
    return orElse();
  }
}

abstract class _InitializeWalletConnect implements AuthenticationEvent {
  const factory _InitializeWalletConnect() = _$InitializeWalletConnectImpl;
}

/// @nodoc
abstract class _$$ConnectWalletImplCopyWith<$Res> {
  factory _$$ConnectWalletImplCopyWith(
          _$ConnectWalletImpl value, $Res Function(_$ConnectWalletImpl) then) =
      __$$ConnectWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$ConnectWalletImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ConnectWalletImpl>
    implements _$$ConnectWalletImplCopyWith<$Res> {
  __$$ConnectWalletImplCopyWithImpl(
      _$ConnectWalletImpl _value, $Res Function(_$ConnectWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$ConnectWalletImpl(
      null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectWalletImpl implements _ConnectWallet {
  const _$ConnectWalletImpl(this.publicKey);

  @override
  final String publicKey;

  @override
  String toString() {
    return 'AuthenticationEvent.connectWallet(publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectWalletImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectWalletImplCopyWith<_$ConnectWalletImpl> get copyWith =>
      __$$ConnectWalletImplCopyWithImpl<_$ConnectWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initializeWalletConnect,
    required TResult Function(String publicKey) connectWallet,
  }) {
    return connectWallet(publicKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initializeWalletConnect,
    TResult? Function(String publicKey)? connectWallet,
  }) {
    return connectWallet?.call(publicKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initializeWalletConnect,
    TResult Function(String publicKey)? connectWallet,
    required TResult orElse(),
  }) {
    if (connectWallet != null) {
      return connectWallet(publicKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitializeWalletConnect value)
        initializeWalletConnect,
    required TResult Function(_ConnectWallet value) connectWallet,
  }) {
    return connectWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitializeWalletConnect value)? initializeWalletConnect,
    TResult? Function(_ConnectWallet value)? connectWallet,
  }) {
    return connectWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitializeWalletConnect value)? initializeWalletConnect,
    TResult Function(_ConnectWallet value)? connectWallet,
    required TResult orElse(),
  }) {
    if (connectWallet != null) {
      return connectWallet(this);
    }
    return orElse();
  }
}

abstract class _ConnectWallet implements AuthenticationEvent {
  const factory _ConnectWallet(final String publicKey) = _$ConnectWalletImpl;

  String get publicKey;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectWalletImplCopyWith<_$ConnectWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String walletSessionUri) walletConnectInitialized,
    required TResult Function(String publicKey) walletConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String walletSessionUri)? walletConnectInitialized,
    TResult? Function(String publicKey)? walletConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String walletSessionUri)? walletConnectInitialized,
    TResult Function(String publicKey)? walletConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitialState value) initial,
    required TResult Function(WalletConnectInitialized value)
        walletConnectInitialized,
    required TResult Function(WalletConnected value) walletConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitialState value)? initial,
    TResult? Function(WalletConnectInitialized value)? walletConnectInitialized,
    TResult? Function(WalletConnected value)? walletConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitialState value)? initial,
    TResult Function(WalletConnectInitialized value)? walletConnectInitialized,
    TResult Function(WalletConnected value)? walletConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements AuthenticationInitialState {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String walletSessionUri) walletConnectInitialized,
    required TResult Function(String publicKey) walletConnected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String walletSessionUri)? walletConnectInitialized,
    TResult? Function(String publicKey)? walletConnected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String walletSessionUri)? walletConnectInitialized,
    TResult Function(String publicKey)? walletConnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitialState value) initial,
    required TResult Function(WalletConnectInitialized value)
        walletConnectInitialized,
    required TResult Function(WalletConnected value) walletConnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitialState value)? initial,
    TResult? Function(WalletConnectInitialized value)? walletConnectInitialized,
    TResult? Function(WalletConnected value)? walletConnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitialState value)? initial,
    TResult Function(WalletConnectInitialized value)? walletConnectInitialized,
    TResult Function(WalletConnected value)? walletConnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthenticationInitialState implements AuthenticationState {
  const factory AuthenticationInitialState() = _$InitialImpl;
}

/// @nodoc
abstract class _$$WalletConnectInitializedImplCopyWith<$Res> {
  factory _$$WalletConnectInitializedImplCopyWith(
          _$WalletConnectInitializedImpl value,
          $Res Function(_$WalletConnectInitializedImpl) then) =
      __$$WalletConnectInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String walletSessionUri});
}

/// @nodoc
class __$$WalletConnectInitializedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$WalletConnectInitializedImpl>
    implements _$$WalletConnectInitializedImplCopyWith<$Res> {
  __$$WalletConnectInitializedImplCopyWithImpl(
      _$WalletConnectInitializedImpl _value,
      $Res Function(_$WalletConnectInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletSessionUri = null,
  }) {
    return _then(_$WalletConnectInitializedImpl(
      null == walletSessionUri
          ? _value.walletSessionUri
          : walletSessionUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletConnectInitializedImpl implements WalletConnectInitialized {
  const _$WalletConnectInitializedImpl(this.walletSessionUri);

  @override
  final String walletSessionUri;

  @override
  String toString() {
    return 'AuthenticationState.walletConnectInitialized(walletSessionUri: $walletSessionUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectInitializedImpl &&
            (identical(other.walletSessionUri, walletSessionUri) ||
                other.walletSessionUri == walletSessionUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletSessionUri);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletConnectInitializedImplCopyWith<_$WalletConnectInitializedImpl>
      get copyWith => __$$WalletConnectInitializedImplCopyWithImpl<
          _$WalletConnectInitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String walletSessionUri) walletConnectInitialized,
    required TResult Function(String publicKey) walletConnected,
  }) {
    return walletConnectInitialized(walletSessionUri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String walletSessionUri)? walletConnectInitialized,
    TResult? Function(String publicKey)? walletConnected,
  }) {
    return walletConnectInitialized?.call(walletSessionUri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String walletSessionUri)? walletConnectInitialized,
    TResult Function(String publicKey)? walletConnected,
    required TResult orElse(),
  }) {
    if (walletConnectInitialized != null) {
      return walletConnectInitialized(walletSessionUri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitialState value) initial,
    required TResult Function(WalletConnectInitialized value)
        walletConnectInitialized,
    required TResult Function(WalletConnected value) walletConnected,
  }) {
    return walletConnectInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitialState value)? initial,
    TResult? Function(WalletConnectInitialized value)? walletConnectInitialized,
    TResult? Function(WalletConnected value)? walletConnected,
  }) {
    return walletConnectInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitialState value)? initial,
    TResult Function(WalletConnectInitialized value)? walletConnectInitialized,
    TResult Function(WalletConnected value)? walletConnected,
    required TResult orElse(),
  }) {
    if (walletConnectInitialized != null) {
      return walletConnectInitialized(this);
    }
    return orElse();
  }
}

abstract class WalletConnectInitialized implements AuthenticationState {
  const factory WalletConnectInitialized(final String walletSessionUri) =
      _$WalletConnectInitializedImpl;

  String get walletSessionUri;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletConnectInitializedImplCopyWith<_$WalletConnectInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletConnectedImplCopyWith<$Res> {
  factory _$$WalletConnectedImplCopyWith(_$WalletConnectedImpl value,
          $Res Function(_$WalletConnectedImpl) then) =
      __$$WalletConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$WalletConnectedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$WalletConnectedImpl>
    implements _$$WalletConnectedImplCopyWith<$Res> {
  __$$WalletConnectedImplCopyWithImpl(
      _$WalletConnectedImpl _value, $Res Function(_$WalletConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$WalletConnectedImpl(
      null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletConnectedImpl implements WalletConnected {
  const _$WalletConnectedImpl(this.publicKey);

  @override
  final String publicKey;

  @override
  String toString() {
    return 'AuthenticationState.walletConnected(publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectedImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletConnectedImplCopyWith<_$WalletConnectedImpl> get copyWith =>
      __$$WalletConnectedImplCopyWithImpl<_$WalletConnectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String walletSessionUri) walletConnectInitialized,
    required TResult Function(String publicKey) walletConnected,
  }) {
    return walletConnected(publicKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String walletSessionUri)? walletConnectInitialized,
    TResult? Function(String publicKey)? walletConnected,
  }) {
    return walletConnected?.call(publicKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String walletSessionUri)? walletConnectInitialized,
    TResult Function(String publicKey)? walletConnected,
    required TResult orElse(),
  }) {
    if (walletConnected != null) {
      return walletConnected(publicKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitialState value) initial,
    required TResult Function(WalletConnectInitialized value)
        walletConnectInitialized,
    required TResult Function(WalletConnected value) walletConnected,
  }) {
    return walletConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitialState value)? initial,
    TResult? Function(WalletConnectInitialized value)? walletConnectInitialized,
    TResult? Function(WalletConnected value)? walletConnected,
  }) {
    return walletConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitialState value)? initial,
    TResult Function(WalletConnectInitialized value)? walletConnectInitialized,
    TResult Function(WalletConnected value)? walletConnected,
    required TResult orElse(),
  }) {
    if (walletConnected != null) {
      return walletConnected(this);
    }
    return orElse();
  }
}

abstract class WalletConnected implements AuthenticationState {
  const factory WalletConnected(final String publicKey) = _$WalletConnectedImpl;

  String get publicKey;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletConnectedImplCopyWith<_$WalletConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
