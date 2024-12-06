// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestInfo _$RequestInfoFromJson(Map<String, dynamic> json) {
  return _RequestInfo.fromJson(json);
}

/// @nodoc
mixin _$RequestInfo {
  Currency get currency => throw _privateConstructorUsedError;
  String get expectedAmount => throw _privateConstructorUsedError;
  TransactionActor get payee => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this RequestInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestInfoCopyWith<RequestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestInfoCopyWith<$Res> {
  factory $RequestInfoCopyWith(
          RequestInfo value, $Res Function(RequestInfo) then) =
      _$RequestInfoCopyWithImpl<$Res, RequestInfo>;
  @useResult
  $Res call(
      {Currency currency,
      String expectedAmount,
      TransactionActor payee,
      int? timestamp});

  $CurrencyCopyWith<$Res> get currency;
  $TransactionActorCopyWith<$Res> get payee;
}

/// @nodoc
class _$RequestInfoCopyWithImpl<$Res, $Val extends RequestInfo>
    implements $RequestInfoCopyWith<$Res> {
  _$RequestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? expectedAmount = null,
    Object? payee = null,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      expectedAmount: null == expectedAmount
          ? _value.expectedAmount
          : expectedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      payee: null == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionActorCopyWith<$Res> get payee {
    return $TransactionActorCopyWith<$Res>(_value.payee, (value) {
      return _then(_value.copyWith(payee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestInfoImplCopyWith<$Res>
    implements $RequestInfoCopyWith<$Res> {
  factory _$$RequestInfoImplCopyWith(
          _$RequestInfoImpl value, $Res Function(_$RequestInfoImpl) then) =
      __$$RequestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Currency currency,
      String expectedAmount,
      TransactionActor payee,
      int? timestamp});

  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $TransactionActorCopyWith<$Res> get payee;
}

/// @nodoc
class __$$RequestInfoImplCopyWithImpl<$Res>
    extends _$RequestInfoCopyWithImpl<$Res, _$RequestInfoImpl>
    implements _$$RequestInfoImplCopyWith<$Res> {
  __$$RequestInfoImplCopyWithImpl(
      _$RequestInfoImpl _value, $Res Function(_$RequestInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? expectedAmount = null,
    Object? payee = null,
    Object? timestamp = freezed,
  }) {
    return _then(_$RequestInfoImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      expectedAmount: null == expectedAmount
          ? _value.expectedAmount
          : expectedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      payee: null == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$RequestInfoImpl implements _RequestInfo {
  const _$RequestInfoImpl(
      {required this.currency,
      required this.expectedAmount,
      required this.payee,
      this.timestamp});

  factory _$RequestInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestInfoImplFromJson(json);

  @override
  final Currency currency;
  @override
  final String expectedAmount;
  @override
  final TransactionActor payee;
  @override
  final int? timestamp;

  @override
  String toString() {
    return 'RequestInfo(currency: $currency, expectedAmount: $expectedAmount, payee: $payee, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestInfoImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.expectedAmount, expectedAmount) ||
                other.expectedAmount == expectedAmount) &&
            (identical(other.payee, payee) || other.payee == payee) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currency, expectedAmount, payee, timestamp);

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestInfoImplCopyWith<_$RequestInfoImpl> get copyWith =>
      __$$RequestInfoImplCopyWithImpl<_$RequestInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestInfoImplToJson(
      this,
    );
  }
}

abstract class _RequestInfo implements RequestInfo {
  const factory _RequestInfo(
      {required final Currency currency,
      required final String expectedAmount,
      required final TransactionActor payee,
      final int? timestamp}) = _$RequestInfoImpl;

  factory _RequestInfo.fromJson(Map<String, dynamic> json) =
      _$RequestInfoImpl.fromJson;

  @override
  Currency get currency;
  @override
  String get expectedAmount;
  @override
  TransactionActor get payee;
  @override
  int? get timestamp;

  /// Create a copy of RequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestInfoImplCopyWith<_$RequestInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
