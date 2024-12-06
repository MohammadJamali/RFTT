// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceCreatedResponse _$InvoiceCreatedResponseFromJson(
    Map<String, dynamic> json) {
  return _InvoiceCreatedResponse.fromJson(json);
}

/// @nodoc
mixin _$InvoiceCreatedResponse {
  Map<String, dynamic>? get events => throw _privateConstructorUsedError;
  int? get eventsCount => throw _privateConstructorUsedError;
  InvoiceCreatedResponseMeta? get meta => throw _privateConstructorUsedError;
  Map<String, dynamic>? get result => throw _privateConstructorUsedError;

  /// Serializes this InvoiceCreatedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceCreatedResponseCopyWith<InvoiceCreatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCreatedResponseCopyWith<$Res> {
  factory $InvoiceCreatedResponseCopyWith(InvoiceCreatedResponse value,
          $Res Function(InvoiceCreatedResponse) then) =
      _$InvoiceCreatedResponseCopyWithImpl<$Res, InvoiceCreatedResponse>;
  @useResult
  $Res call(
      {Map<String, dynamic>? events,
      int? eventsCount,
      InvoiceCreatedResponseMeta? meta,
      Map<String, dynamic>? result});

  $InvoiceCreatedResponseMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$InvoiceCreatedResponseCopyWithImpl<$Res,
        $Val extends InvoiceCreatedResponse>
    implements $InvoiceCreatedResponseCopyWith<$Res> {
  _$InvoiceCreatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
    Object? eventsCount = freezed,
    Object? meta = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      eventsCount: freezed == eventsCount
          ? _value.eventsCount
          : eventsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as InvoiceCreatedResponseMeta?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of InvoiceCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceCreatedResponseMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $InvoiceCreatedResponseMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceCreatedResponseImplCopyWith<$Res>
    implements $InvoiceCreatedResponseCopyWith<$Res> {
  factory _$$InvoiceCreatedResponseImplCopyWith(
          _$InvoiceCreatedResponseImpl value,
          $Res Function(_$InvoiceCreatedResponseImpl) then) =
      __$$InvoiceCreatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? events,
      int? eventsCount,
      InvoiceCreatedResponseMeta? meta,
      Map<String, dynamic>? result});

  @override
  $InvoiceCreatedResponseMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$InvoiceCreatedResponseImplCopyWithImpl<$Res>
    extends _$InvoiceCreatedResponseCopyWithImpl<$Res,
        _$InvoiceCreatedResponseImpl>
    implements _$$InvoiceCreatedResponseImplCopyWith<$Res> {
  __$$InvoiceCreatedResponseImplCopyWithImpl(
      _$InvoiceCreatedResponseImpl _value,
      $Res Function(_$InvoiceCreatedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
    Object? eventsCount = freezed,
    Object? meta = freezed,
    Object? result = freezed,
  }) {
    return _then(_$InvoiceCreatedResponseImpl(
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      eventsCount: freezed == eventsCount
          ? _value.eventsCount
          : eventsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as InvoiceCreatedResponseMeta?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceCreatedResponseImpl implements _InvoiceCreatedResponse {
  const _$InvoiceCreatedResponseImpl(
      {final Map<String, dynamic>? events,
      this.eventsCount,
      this.meta,
      final Map<String, dynamic>? result})
      : _events = events,
        _result = result;

  factory _$InvoiceCreatedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceCreatedResponseImplFromJson(json);

  final Map<String, dynamic>? _events;
  @override
  Map<String, dynamic>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableMapView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? eventsCount;
  @override
  final InvoiceCreatedResponseMeta? meta;
  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'InvoiceCreatedResponse(events: $events, eventsCount: $eventsCount, meta: $meta, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceCreatedResponseImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.eventsCount, eventsCount) ||
                other.eventsCount == eventsCount) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      eventsCount,
      meta,
      const DeepCollectionEquality().hash(_result));

  /// Create a copy of InvoiceCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceCreatedResponseImplCopyWith<_$InvoiceCreatedResponseImpl>
      get copyWith => __$$InvoiceCreatedResponseImplCopyWithImpl<
          _$InvoiceCreatedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceCreatedResponseImplToJson(
      this,
    );
  }
}

abstract class _InvoiceCreatedResponse implements InvoiceCreatedResponse {
  const factory _InvoiceCreatedResponse(
      {final Map<String, dynamic>? events,
      final int? eventsCount,
      final InvoiceCreatedResponseMeta? meta,
      final Map<String, dynamic>? result}) = _$InvoiceCreatedResponseImpl;

  factory _InvoiceCreatedResponse.fromJson(Map<String, dynamic> json) =
      _$InvoiceCreatedResponseImpl.fromJson;

  @override
  Map<String, dynamic>? get events;
  @override
  int? get eventsCount;
  @override
  InvoiceCreatedResponseMeta? get meta;
  @override
  Map<String, dynamic>? get result;

  /// Create a copy of InvoiceCreatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceCreatedResponseImplCopyWith<_$InvoiceCreatedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceCreatedResponseMeta _$InvoiceCreatedResponseMetaFromJson(
    Map<String, dynamic> json) {
  return _InvoiceCreatedResponseMeta.fromJson(json);
}

/// @nodoc
mixin _$InvoiceCreatedResponseMeta {
  String? get transactionStorageLocation => throw _privateConstructorUsedError;
  InvoiceCreatedResponseStorageMeta? get storageMeta =>
      throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get storageType => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this InvoiceCreatedResponseMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceCreatedResponseMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceCreatedResponseMetaCopyWith<InvoiceCreatedResponseMeta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCreatedResponseMetaCopyWith<$Res> {
  factory $InvoiceCreatedResponseMetaCopyWith(InvoiceCreatedResponseMeta value,
          $Res Function(InvoiceCreatedResponseMeta) then) =
      _$InvoiceCreatedResponseMetaCopyWithImpl<$Res,
          InvoiceCreatedResponseMeta>;
  @useResult
  $Res call(
      {String? transactionStorageLocation,
      InvoiceCreatedResponseStorageMeta? storageMeta,
      String? state,
      String? storageType,
      int? timestamp});

  $InvoiceCreatedResponseStorageMetaCopyWith<$Res>? get storageMeta;
}

/// @nodoc
class _$InvoiceCreatedResponseMetaCopyWithImpl<$Res,
        $Val extends InvoiceCreatedResponseMeta>
    implements $InvoiceCreatedResponseMetaCopyWith<$Res> {
  _$InvoiceCreatedResponseMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceCreatedResponseMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionStorageLocation = freezed,
    Object? storageMeta = freezed,
    Object? state = freezed,
    Object? storageType = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      transactionStorageLocation: freezed == transactionStorageLocation
          ? _value.transactionStorageLocation
          : transactionStorageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      storageMeta: freezed == storageMeta
          ? _value.storageMeta
          : storageMeta // ignore: cast_nullable_to_non_nullable
              as InvoiceCreatedResponseStorageMeta?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      storageType: freezed == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of InvoiceCreatedResponseMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceCreatedResponseStorageMetaCopyWith<$Res>? get storageMeta {
    if (_value.storageMeta == null) {
      return null;
    }

    return $InvoiceCreatedResponseStorageMetaCopyWith<$Res>(_value.storageMeta!,
        (value) {
      return _then(_value.copyWith(storageMeta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceCreatedResponseMetaImplCopyWith<$Res>
    implements $InvoiceCreatedResponseMetaCopyWith<$Res> {
  factory _$$InvoiceCreatedResponseMetaImplCopyWith(
          _$InvoiceCreatedResponseMetaImpl value,
          $Res Function(_$InvoiceCreatedResponseMetaImpl) then) =
      __$$InvoiceCreatedResponseMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? transactionStorageLocation,
      InvoiceCreatedResponseStorageMeta? storageMeta,
      String? state,
      String? storageType,
      int? timestamp});

  @override
  $InvoiceCreatedResponseStorageMetaCopyWith<$Res>? get storageMeta;
}

/// @nodoc
class __$$InvoiceCreatedResponseMetaImplCopyWithImpl<$Res>
    extends _$InvoiceCreatedResponseMetaCopyWithImpl<$Res,
        _$InvoiceCreatedResponseMetaImpl>
    implements _$$InvoiceCreatedResponseMetaImplCopyWith<$Res> {
  __$$InvoiceCreatedResponseMetaImplCopyWithImpl(
      _$InvoiceCreatedResponseMetaImpl _value,
      $Res Function(_$InvoiceCreatedResponseMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceCreatedResponseMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionStorageLocation = freezed,
    Object? storageMeta = freezed,
    Object? state = freezed,
    Object? storageType = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$InvoiceCreatedResponseMetaImpl(
      transactionStorageLocation: freezed == transactionStorageLocation
          ? _value.transactionStorageLocation
          : transactionStorageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      storageMeta: freezed == storageMeta
          ? _value.storageMeta
          : storageMeta // ignore: cast_nullable_to_non_nullable
              as InvoiceCreatedResponseStorageMeta?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      storageType: freezed == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceCreatedResponseMetaImpl implements _InvoiceCreatedResponseMeta {
  const _$InvoiceCreatedResponseMetaImpl(
      {this.transactionStorageLocation,
      this.storageMeta,
      this.state,
      this.storageType,
      this.timestamp});

  factory _$InvoiceCreatedResponseMetaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InvoiceCreatedResponseMetaImplFromJson(json);

  @override
  final String? transactionStorageLocation;
  @override
  final InvoiceCreatedResponseStorageMeta? storageMeta;
  @override
  final String? state;
  @override
  final String? storageType;
  @override
  final int? timestamp;

  @override
  String toString() {
    return 'InvoiceCreatedResponseMeta(transactionStorageLocation: $transactionStorageLocation, storageMeta: $storageMeta, state: $state, storageType: $storageType, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceCreatedResponseMetaImpl &&
            (identical(other.transactionStorageLocation,
                    transactionStorageLocation) ||
                other.transactionStorageLocation ==
                    transactionStorageLocation) &&
            (identical(other.storageMeta, storageMeta) ||
                other.storageMeta == storageMeta) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.storageType, storageType) ||
                other.storageType == storageType) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionStorageLocation,
      storageMeta, state, storageType, timestamp);

  /// Create a copy of InvoiceCreatedResponseMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceCreatedResponseMetaImplCopyWith<_$InvoiceCreatedResponseMetaImpl>
      get copyWith => __$$InvoiceCreatedResponseMetaImplCopyWithImpl<
          _$InvoiceCreatedResponseMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceCreatedResponseMetaImplToJson(
      this,
    );
  }
}

abstract class _InvoiceCreatedResponseMeta
    implements InvoiceCreatedResponseMeta {
  const factory _InvoiceCreatedResponseMeta(
      {final String? transactionStorageLocation,
      final InvoiceCreatedResponseStorageMeta? storageMeta,
      final String? state,
      final String? storageType,
      final int? timestamp}) = _$InvoiceCreatedResponseMetaImpl;

  factory _InvoiceCreatedResponseMeta.fromJson(Map<String, dynamic> json) =
      _$InvoiceCreatedResponseMetaImpl.fromJson;

  @override
  String? get transactionStorageLocation;
  @override
  InvoiceCreatedResponseStorageMeta? get storageMeta;
  @override
  String? get state;
  @override
  String? get storageType;
  @override
  int? get timestamp;

  /// Create a copy of InvoiceCreatedResponseMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceCreatedResponseMetaImplCopyWith<_$InvoiceCreatedResponseMetaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceCreatedResponseStorageMeta _$InvoiceCreatedResponseStorageMetaFromJson(
    Map<String, dynamic> json) {
  return _InvoiceCreatedResponseStorageMeta.fromJson(json);
}

/// @nodoc
mixin _$InvoiceCreatedResponseStorageMeta {
  Map<String, dynamic>? get ipfs => throw _privateConstructorUsedError;
  Map<String, dynamic>? get local => throw _privateConstructorUsedError;
  InvoiceCreatedResponseEthereumData? get ethereum =>
      throw _privateConstructorUsedError;

  /// Serializes this InvoiceCreatedResponseStorageMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceCreatedResponseStorageMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceCreatedResponseStorageMetaCopyWith<InvoiceCreatedResponseStorageMeta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCreatedResponseStorageMetaCopyWith<$Res> {
  factory $InvoiceCreatedResponseStorageMetaCopyWith(
          InvoiceCreatedResponseStorageMeta value,
          $Res Function(InvoiceCreatedResponseStorageMeta) then) =
      _$InvoiceCreatedResponseStorageMetaCopyWithImpl<$Res,
          InvoiceCreatedResponseStorageMeta>;
  @useResult
  $Res call(
      {Map<String, dynamic>? ipfs,
      Map<String, dynamic>? local,
      InvoiceCreatedResponseEthereumData? ethereum});

  $InvoiceCreatedResponseEthereumDataCopyWith<$Res>? get ethereum;
}

/// @nodoc
class _$InvoiceCreatedResponseStorageMetaCopyWithImpl<$Res,
        $Val extends InvoiceCreatedResponseStorageMeta>
    implements $InvoiceCreatedResponseStorageMetaCopyWith<$Res> {
  _$InvoiceCreatedResponseStorageMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceCreatedResponseStorageMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipfs = freezed,
    Object? local = freezed,
    Object? ethereum = freezed,
  }) {
    return _then(_value.copyWith(
      ipfs: freezed == ipfs
          ? _value.ipfs
          : ipfs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      local: freezed == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      ethereum: freezed == ethereum
          ? _value.ethereum
          : ethereum // ignore: cast_nullable_to_non_nullable
              as InvoiceCreatedResponseEthereumData?,
    ) as $Val);
  }

  /// Create a copy of InvoiceCreatedResponseStorageMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceCreatedResponseEthereumDataCopyWith<$Res>? get ethereum {
    if (_value.ethereum == null) {
      return null;
    }

    return $InvoiceCreatedResponseEthereumDataCopyWith<$Res>(_value.ethereum!,
        (value) {
      return _then(_value.copyWith(ethereum: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceCreatedResponseStorageMetaImplCopyWith<$Res>
    implements $InvoiceCreatedResponseStorageMetaCopyWith<$Res> {
  factory _$$InvoiceCreatedResponseStorageMetaImplCopyWith(
          _$InvoiceCreatedResponseStorageMetaImpl value,
          $Res Function(_$InvoiceCreatedResponseStorageMetaImpl) then) =
      __$$InvoiceCreatedResponseStorageMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? ipfs,
      Map<String, dynamic>? local,
      InvoiceCreatedResponseEthereumData? ethereum});

  @override
  $InvoiceCreatedResponseEthereumDataCopyWith<$Res>? get ethereum;
}

/// @nodoc
class __$$InvoiceCreatedResponseStorageMetaImplCopyWithImpl<$Res>
    extends _$InvoiceCreatedResponseStorageMetaCopyWithImpl<$Res,
        _$InvoiceCreatedResponseStorageMetaImpl>
    implements _$$InvoiceCreatedResponseStorageMetaImplCopyWith<$Res> {
  __$$InvoiceCreatedResponseStorageMetaImplCopyWithImpl(
      _$InvoiceCreatedResponseStorageMetaImpl _value,
      $Res Function(_$InvoiceCreatedResponseStorageMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceCreatedResponseStorageMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipfs = freezed,
    Object? local = freezed,
    Object? ethereum = freezed,
  }) {
    return _then(_$InvoiceCreatedResponseStorageMetaImpl(
      ipfs: freezed == ipfs
          ? _value._ipfs
          : ipfs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      local: freezed == local
          ? _value._local
          : local // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      ethereum: freezed == ethereum
          ? _value.ethereum
          : ethereum // ignore: cast_nullable_to_non_nullable
              as InvoiceCreatedResponseEthereumData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceCreatedResponseStorageMetaImpl
    implements _InvoiceCreatedResponseStorageMeta {
  const _$InvoiceCreatedResponseStorageMetaImpl(
      {final Map<String, dynamic>? ipfs,
      final Map<String, dynamic>? local,
      this.ethereum})
      : _ipfs = ipfs,
        _local = local;

  factory _$InvoiceCreatedResponseStorageMetaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InvoiceCreatedResponseStorageMetaImplFromJson(json);

  final Map<String, dynamic>? _ipfs;
  @override
  Map<String, dynamic>? get ipfs {
    final value = _ipfs;
    if (value == null) return null;
    if (_ipfs is EqualUnmodifiableMapView) return _ipfs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _local;
  @override
  Map<String, dynamic>? get local {
    final value = _local;
    if (value == null) return null;
    if (_local is EqualUnmodifiableMapView) return _local;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final InvoiceCreatedResponseEthereumData? ethereum;

  @override
  String toString() {
    return 'InvoiceCreatedResponseStorageMeta(ipfs: $ipfs, local: $local, ethereum: $ethereum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceCreatedResponseStorageMetaImpl &&
            const DeepCollectionEquality().equals(other._ipfs, _ipfs) &&
            const DeepCollectionEquality().equals(other._local, _local) &&
            (identical(other.ethereum, ethereum) ||
                other.ethereum == ethereum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ipfs),
      const DeepCollectionEquality().hash(_local),
      ethereum);

  /// Create a copy of InvoiceCreatedResponseStorageMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceCreatedResponseStorageMetaImplCopyWith<
          _$InvoiceCreatedResponseStorageMetaImpl>
      get copyWith => __$$InvoiceCreatedResponseStorageMetaImplCopyWithImpl<
          _$InvoiceCreatedResponseStorageMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceCreatedResponseStorageMetaImplToJson(
      this,
    );
  }
}

abstract class _InvoiceCreatedResponseStorageMeta
    implements InvoiceCreatedResponseStorageMeta {
  const factory _InvoiceCreatedResponseStorageMeta(
          {final Map<String, dynamic>? ipfs,
          final Map<String, dynamic>? local,
          final InvoiceCreatedResponseEthereumData? ethereum}) =
      _$InvoiceCreatedResponseStorageMetaImpl;

  factory _InvoiceCreatedResponseStorageMeta.fromJson(
          Map<String, dynamic> json) =
      _$InvoiceCreatedResponseStorageMetaImpl.fromJson;

  @override
  Map<String, dynamic>? get ipfs;
  @override
  Map<String, dynamic>? get local;
  @override
  InvoiceCreatedResponseEthereumData? get ethereum;

  /// Create a copy of InvoiceCreatedResponseStorageMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceCreatedResponseStorageMetaImplCopyWith<
          _$InvoiceCreatedResponseStorageMetaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceCreatedResponseEthereumData _$InvoiceCreatedResponseEthereumDataFromJson(
    Map<String, dynamic> json) {
  return _InvoiceCreatedResponseEthereumData.fromJson(json);
}

/// @nodoc
mixin _$InvoiceCreatedResponseEthereumData {
  int? get nonce => throw _privateConstructorUsedError;
  String? get transactionHash => throw _privateConstructorUsedError;
  int? get blockConfirmation => throw _privateConstructorUsedError;
  int? get blockNumber => throw _privateConstructorUsedError;
  int? get blockTimestamp => throw _privateConstructorUsedError;
  String? get networkName => throw _privateConstructorUsedError;
  String? get smartContractAddress => throw _privateConstructorUsedError;

  /// Serializes this InvoiceCreatedResponseEthereumData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceCreatedResponseEthereumData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceCreatedResponseEthereumDataCopyWith<
          InvoiceCreatedResponseEthereumData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCreatedResponseEthereumDataCopyWith<$Res> {
  factory $InvoiceCreatedResponseEthereumDataCopyWith(
          InvoiceCreatedResponseEthereumData value,
          $Res Function(InvoiceCreatedResponseEthereumData) then) =
      _$InvoiceCreatedResponseEthereumDataCopyWithImpl<$Res,
          InvoiceCreatedResponseEthereumData>;
  @useResult
  $Res call(
      {int? nonce,
      String? transactionHash,
      int? blockConfirmation,
      int? blockNumber,
      int? blockTimestamp,
      String? networkName,
      String? smartContractAddress});
}

/// @nodoc
class _$InvoiceCreatedResponseEthereumDataCopyWithImpl<$Res,
        $Val extends InvoiceCreatedResponseEthereumData>
    implements $InvoiceCreatedResponseEthereumDataCopyWith<$Res> {
  _$InvoiceCreatedResponseEthereumDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceCreatedResponseEthereumData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonce = freezed,
    Object? transactionHash = freezed,
    Object? blockConfirmation = freezed,
    Object? blockNumber = freezed,
    Object? blockTimestamp = freezed,
    Object? networkName = freezed,
    Object? smartContractAddress = freezed,
  }) {
    return _then(_value.copyWith(
      nonce: freezed == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionHash: freezed == transactionHash
          ? _value.transactionHash
          : transactionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockConfirmation: freezed == blockConfirmation
          ? _value.blockConfirmation
          : blockConfirmation // ignore: cast_nullable_to_non_nullable
              as int?,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      blockTimestamp: freezed == blockTimestamp
          ? _value.blockTimestamp
          : blockTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      networkName: freezed == networkName
          ? _value.networkName
          : networkName // ignore: cast_nullable_to_non_nullable
              as String?,
      smartContractAddress: freezed == smartContractAddress
          ? _value.smartContractAddress
          : smartContractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceCreatedResponseEthereumDataImplCopyWith<$Res>
    implements $InvoiceCreatedResponseEthereumDataCopyWith<$Res> {
  factory _$$InvoiceCreatedResponseEthereumDataImplCopyWith(
          _$InvoiceCreatedResponseEthereumDataImpl value,
          $Res Function(_$InvoiceCreatedResponseEthereumDataImpl) then) =
      __$$InvoiceCreatedResponseEthereumDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? nonce,
      String? transactionHash,
      int? blockConfirmation,
      int? blockNumber,
      int? blockTimestamp,
      String? networkName,
      String? smartContractAddress});
}

/// @nodoc
class __$$InvoiceCreatedResponseEthereumDataImplCopyWithImpl<$Res>
    extends _$InvoiceCreatedResponseEthereumDataCopyWithImpl<$Res,
        _$InvoiceCreatedResponseEthereumDataImpl>
    implements _$$InvoiceCreatedResponseEthereumDataImplCopyWith<$Res> {
  __$$InvoiceCreatedResponseEthereumDataImplCopyWithImpl(
      _$InvoiceCreatedResponseEthereumDataImpl _value,
      $Res Function(_$InvoiceCreatedResponseEthereumDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceCreatedResponseEthereumData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonce = freezed,
    Object? transactionHash = freezed,
    Object? blockConfirmation = freezed,
    Object? blockNumber = freezed,
    Object? blockTimestamp = freezed,
    Object? networkName = freezed,
    Object? smartContractAddress = freezed,
  }) {
    return _then(_$InvoiceCreatedResponseEthereumDataImpl(
      nonce: freezed == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionHash: freezed == transactionHash
          ? _value.transactionHash
          : transactionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockConfirmation: freezed == blockConfirmation
          ? _value.blockConfirmation
          : blockConfirmation // ignore: cast_nullable_to_non_nullable
              as int?,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      blockTimestamp: freezed == blockTimestamp
          ? _value.blockTimestamp
          : blockTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      networkName: freezed == networkName
          ? _value.networkName
          : networkName // ignore: cast_nullable_to_non_nullable
              as String?,
      smartContractAddress: freezed == smartContractAddress
          ? _value.smartContractAddress
          : smartContractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceCreatedResponseEthereumDataImpl
    implements _InvoiceCreatedResponseEthereumData {
  const _$InvoiceCreatedResponseEthereumDataImpl(
      {this.nonce,
      this.transactionHash,
      this.blockConfirmation,
      this.blockNumber,
      this.blockTimestamp,
      this.networkName,
      this.smartContractAddress});

  factory _$InvoiceCreatedResponseEthereumDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InvoiceCreatedResponseEthereumDataImplFromJson(json);

  @override
  final int? nonce;
  @override
  final String? transactionHash;
  @override
  final int? blockConfirmation;
  @override
  final int? blockNumber;
  @override
  final int? blockTimestamp;
  @override
  final String? networkName;
  @override
  final String? smartContractAddress;

  @override
  String toString() {
    return 'InvoiceCreatedResponseEthereumData(nonce: $nonce, transactionHash: $transactionHash, blockConfirmation: $blockConfirmation, blockNumber: $blockNumber, blockTimestamp: $blockTimestamp, networkName: $networkName, smartContractAddress: $smartContractAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceCreatedResponseEthereumDataImpl &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.transactionHash, transactionHash) ||
                other.transactionHash == transactionHash) &&
            (identical(other.blockConfirmation, blockConfirmation) ||
                other.blockConfirmation == blockConfirmation) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.blockTimestamp, blockTimestamp) ||
                other.blockTimestamp == blockTimestamp) &&
            (identical(other.networkName, networkName) ||
                other.networkName == networkName) &&
            (identical(other.smartContractAddress, smartContractAddress) ||
                other.smartContractAddress == smartContractAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nonce,
      transactionHash,
      blockConfirmation,
      blockNumber,
      blockTimestamp,
      networkName,
      smartContractAddress);

  /// Create a copy of InvoiceCreatedResponseEthereumData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceCreatedResponseEthereumDataImplCopyWith<
          _$InvoiceCreatedResponseEthereumDataImpl>
      get copyWith => __$$InvoiceCreatedResponseEthereumDataImplCopyWithImpl<
          _$InvoiceCreatedResponseEthereumDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceCreatedResponseEthereumDataImplToJson(
      this,
    );
  }
}

abstract class _InvoiceCreatedResponseEthereumData
    implements InvoiceCreatedResponseEthereumData {
  const factory _InvoiceCreatedResponseEthereumData(
          {final int? nonce,
          final String? transactionHash,
          final int? blockConfirmation,
          final int? blockNumber,
          final int? blockTimestamp,
          final String? networkName,
          final String? smartContractAddress}) =
      _$InvoiceCreatedResponseEthereumDataImpl;

  factory _InvoiceCreatedResponseEthereumData.fromJson(
          Map<String, dynamic> json) =
      _$InvoiceCreatedResponseEthereumDataImpl.fromJson;

  @override
  int? get nonce;
  @override
  String? get transactionHash;
  @override
  int? get blockConfirmation;
  @override
  int? get blockNumber;
  @override
  int? get blockTimestamp;
  @override
  String? get networkName;
  @override
  String? get smartContractAddress;

  /// Create a copy of InvoiceCreatedResponseEthereumData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceCreatedResponseEthereumDataImplCopyWith<
          _$InvoiceCreatedResponseEthereumDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
