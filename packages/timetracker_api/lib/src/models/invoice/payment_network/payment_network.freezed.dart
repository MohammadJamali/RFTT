// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_network.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentNetwork _$PaymentNetworkFromJson(Map<String, dynamic> json) {
  return _PaymentNetwork.fromJson(json);
}

/// @nodoc
mixin _$PaymentNetwork {
  String get id => throw _privateConstructorUsedError; // 'sepolia'
  String get paymentNetworkName =>
      throw _privateConstructorUsedError; // payeeIdentity
  String get paymentAddress =>
      throw _privateConstructorUsedError; // feeRecipient
  String get feeAddress => throw _privateConstructorUsedError; //  '0'
  String get feeAmount => throw _privateConstructorUsedError;

  /// Serializes this PaymentNetwork to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentNetwork
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentNetworkCopyWith<PaymentNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentNetworkCopyWith<$Res> {
  factory $PaymentNetworkCopyWith(
          PaymentNetwork value, $Res Function(PaymentNetwork) then) =
      _$PaymentNetworkCopyWithImpl<$Res, PaymentNetwork>;
  @useResult
  $Res call(
      {String id,
      String paymentNetworkName,
      String paymentAddress,
      String feeAddress,
      String feeAmount});
}

/// @nodoc
class _$PaymentNetworkCopyWithImpl<$Res, $Val extends PaymentNetwork>
    implements $PaymentNetworkCopyWith<$Res> {
  _$PaymentNetworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentNetwork
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentNetworkName = null,
    Object? paymentAddress = null,
    Object? feeAddress = null,
    Object? feeAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paymentNetworkName: null == paymentNetworkName
          ? _value.paymentNetworkName
          : paymentNetworkName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAddress: null == paymentAddress
          ? _value.paymentAddress
          : paymentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      feeAddress: null == feeAddress
          ? _value.feeAddress
          : feeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      feeAmount: null == feeAmount
          ? _value.feeAmount
          : feeAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentNetworkImplCopyWith<$Res>
    implements $PaymentNetworkCopyWith<$Res> {
  factory _$$PaymentNetworkImplCopyWith(_$PaymentNetworkImpl value,
          $Res Function(_$PaymentNetworkImpl) then) =
      __$$PaymentNetworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String paymentNetworkName,
      String paymentAddress,
      String feeAddress,
      String feeAmount});
}

/// @nodoc
class __$$PaymentNetworkImplCopyWithImpl<$Res>
    extends _$PaymentNetworkCopyWithImpl<$Res, _$PaymentNetworkImpl>
    implements _$$PaymentNetworkImplCopyWith<$Res> {
  __$$PaymentNetworkImplCopyWithImpl(
      _$PaymentNetworkImpl _value, $Res Function(_$PaymentNetworkImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentNetwork
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentNetworkName = null,
    Object? paymentAddress = null,
    Object? feeAddress = null,
    Object? feeAmount = null,
  }) {
    return _then(_$PaymentNetworkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paymentNetworkName: null == paymentNetworkName
          ? _value.paymentNetworkName
          : paymentNetworkName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAddress: null == paymentAddress
          ? _value.paymentAddress
          : paymentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      feeAddress: null == feeAddress
          ? _value.feeAddress
          : feeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      feeAmount: null == feeAmount
          ? _value.feeAmount
          : feeAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentNetworkImpl implements _PaymentNetwork {
  const _$PaymentNetworkImpl(
      {required this.id,
      required this.paymentNetworkName,
      required this.paymentAddress,
      required this.feeAddress,
      required this.feeAmount});

  factory _$PaymentNetworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentNetworkImplFromJson(json);

  @override
  final String id;
// 'sepolia'
  @override
  final String paymentNetworkName;
// payeeIdentity
  @override
  final String paymentAddress;
// feeRecipient
  @override
  final String feeAddress;
//  '0'
  @override
  final String feeAmount;

  @override
  String toString() {
    return 'PaymentNetwork(id: $id, paymentNetworkName: $paymentNetworkName, paymentAddress: $paymentAddress, feeAddress: $feeAddress, feeAmount: $feeAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentNetworkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentNetworkName, paymentNetworkName) ||
                other.paymentNetworkName == paymentNetworkName) &&
            (identical(other.paymentAddress, paymentAddress) ||
                other.paymentAddress == paymentAddress) &&
            (identical(other.feeAddress, feeAddress) ||
                other.feeAddress == feeAddress) &&
            (identical(other.feeAmount, feeAmount) ||
                other.feeAmount == feeAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, paymentNetworkName,
      paymentAddress, feeAddress, feeAmount);

  /// Create a copy of PaymentNetwork
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentNetworkImplCopyWith<_$PaymentNetworkImpl> get copyWith =>
      __$$PaymentNetworkImplCopyWithImpl<_$PaymentNetworkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentNetworkImplToJson(
      this,
    );
  }
}

abstract class _PaymentNetwork implements PaymentNetwork {
  const factory _PaymentNetwork(
      {required final String id,
      required final String paymentNetworkName,
      required final String paymentAddress,
      required final String feeAddress,
      required final String feeAmount}) = _$PaymentNetworkImpl;

  factory _PaymentNetwork.fromJson(Map<String, dynamic> json) =
      _$PaymentNetworkImpl.fromJson;

  @override
  String get id; // 'sepolia'
  @override
  String get paymentNetworkName; // payeeIdentity
  @override
  String get paymentAddress; // feeRecipient
  @override
  String get feeAddress; //  '0'
  @override
  String get feeAmount;

  /// Create a copy of PaymentNetwork
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentNetworkImplCopyWith<_$PaymentNetworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
