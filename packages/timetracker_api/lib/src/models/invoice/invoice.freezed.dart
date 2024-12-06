// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  TransactionActor get payee => throw _privateConstructorUsedError;
  String get expectedAmount => throw _privateConstructorUsedError;
  List<ExtensionData> get extensionsData => throw _privateConstructorUsedError;
  TransactionActor? get payer => throw _privateConstructorUsedError;
  String? get paymentRecipient => throw _privateConstructorUsedError;
  PaymentNetwork? get paymentNetwork => throw _privateConstructorUsedError;
  InvoiceStatusList get status => throw _privateConstructorUsedError;

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {String id,
      String projectId,
      int timestamp,
      Currency currency,
      TransactionActor payee,
      String expectedAmount,
      List<ExtensionData> extensionsData,
      TransactionActor? payer,
      String? paymentRecipient,
      PaymentNetwork? paymentNetwork,
      InvoiceStatusList status});

  $CurrencyCopyWith<$Res> get currency;
  $TransactionActorCopyWith<$Res> get payee;
  $TransactionActorCopyWith<$Res>? get payer;
  $PaymentNetworkCopyWith<$Res>? get paymentNetwork;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? timestamp = null,
    Object? currency = null,
    Object? payee = null,
    Object? expectedAmount = null,
    Object? extensionsData = null,
    Object? payer = freezed,
    Object? paymentRecipient = freezed,
    Object? paymentNetwork = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      payee: null == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
      expectedAmount: null == expectedAmount
          ? _value.expectedAmount
          : expectedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      extensionsData: null == extensionsData
          ? _value.extensionsData
          : extensionsData // ignore: cast_nullable_to_non_nullable
              as List<ExtensionData>,
      payer: freezed == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as TransactionActor?,
      paymentRecipient: freezed == paymentRecipient
          ? _value.paymentRecipient
          : paymentRecipient // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentNetwork: freezed == paymentNetwork
          ? _value.paymentNetwork
          : paymentNetwork // ignore: cast_nullable_to_non_nullable
              as PaymentNetwork?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatusList,
    ) as $Val);
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionActorCopyWith<$Res> get payee {
    return $TransactionActorCopyWith<$Res>(_value.payee, (value) {
      return _then(_value.copyWith(payee: value) as $Val);
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionActorCopyWith<$Res>? get payer {
    if (_value.payer == null) {
      return null;
    }

    return $TransactionActorCopyWith<$Res>(_value.payer!, (value) {
      return _then(_value.copyWith(payer: value) as $Val);
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentNetworkCopyWith<$Res>? get paymentNetwork {
    if (_value.paymentNetwork == null) {
      return null;
    }

    return $PaymentNetworkCopyWith<$Res>(_value.paymentNetwork!, (value) {
      return _then(_value.copyWith(paymentNetwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String projectId,
      int timestamp,
      Currency currency,
      TransactionActor payee,
      String expectedAmount,
      List<ExtensionData> extensionsData,
      TransactionActor? payer,
      String? paymentRecipient,
      PaymentNetwork? paymentNetwork,
      InvoiceStatusList status});

  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $TransactionActorCopyWith<$Res> get payee;
  @override
  $TransactionActorCopyWith<$Res>? get payer;
  @override
  $PaymentNetworkCopyWith<$Res>? get paymentNetwork;
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? timestamp = null,
    Object? currency = null,
    Object? payee = null,
    Object? expectedAmount = null,
    Object? extensionsData = null,
    Object? payer = freezed,
    Object? paymentRecipient = freezed,
    Object? paymentNetwork = freezed,
    Object? status = null,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      payee: null == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
      expectedAmount: null == expectedAmount
          ? _value.expectedAmount
          : expectedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      extensionsData: null == extensionsData
          ? _value._extensionsData
          : extensionsData // ignore: cast_nullable_to_non_nullable
              as List<ExtensionData>,
      payer: freezed == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as TransactionActor?,
      paymentRecipient: freezed == paymentRecipient
          ? _value.paymentRecipient
          : paymentRecipient // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentNetwork: freezed == paymentNetwork
          ? _value.paymentNetwork
          : paymentNetwork // ignore: cast_nullable_to_non_nullable
              as PaymentNetwork?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatusList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceImpl implements _Invoice {
  const _$InvoiceImpl(
      {required this.id,
      required this.projectId,
      required this.timestamp,
      required this.currency,
      required this.payee,
      required this.expectedAmount,
      required final List<ExtensionData> extensionsData,
      this.payer,
      this.paymentRecipient,
      this.paymentNetwork,
      this.status = InvoiceStatusList.Unpaid})
      : _extensionsData = extensionsData;

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final int timestamp;
  @override
  final Currency currency;
  @override
  final TransactionActor payee;
  @override
  final String expectedAmount;
  final List<ExtensionData> _extensionsData;
  @override
  List<ExtensionData> get extensionsData {
    if (_extensionsData is EqualUnmodifiableListView) return _extensionsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extensionsData);
  }

  @override
  final TransactionActor? payer;
  @override
  final String? paymentRecipient;
  @override
  final PaymentNetwork? paymentNetwork;
  @override
  @JsonKey()
  final InvoiceStatusList status;

  @override
  String toString() {
    return 'Invoice(id: $id, projectId: $projectId, timestamp: $timestamp, currency: $currency, payee: $payee, expectedAmount: $expectedAmount, extensionsData: $extensionsData, payer: $payer, paymentRecipient: $paymentRecipient, paymentNetwork: $paymentNetwork, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.payee, payee) || other.payee == payee) &&
            (identical(other.expectedAmount, expectedAmount) ||
                other.expectedAmount == expectedAmount) &&
            const DeepCollectionEquality()
                .equals(other._extensionsData, _extensionsData) &&
            (identical(other.payer, payer) || other.payer == payer) &&
            (identical(other.paymentRecipient, paymentRecipient) ||
                other.paymentRecipient == paymentRecipient) &&
            (identical(other.paymentNetwork, paymentNetwork) ||
                other.paymentNetwork == paymentNetwork) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      projectId,
      timestamp,
      currency,
      payee,
      expectedAmount,
      const DeepCollectionEquality().hash(_extensionsData),
      payer,
      paymentRecipient,
      paymentNetwork,
      status);

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {required final String id,
      required final String projectId,
      required final int timestamp,
      required final Currency currency,
      required final TransactionActor payee,
      required final String expectedAmount,
      required final List<ExtensionData> extensionsData,
      final TransactionActor? payer,
      final String? paymentRecipient,
      final PaymentNetwork? paymentNetwork,
      final InvoiceStatusList status}) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  int get timestamp;
  @override
  Currency get currency;
  @override
  TransactionActor get payee;
  @override
  String get expectedAmount;
  @override
  List<ExtensionData> get extensionsData;
  @override
  TransactionActor? get payer;
  @override
  String? get paymentRecipient;
  @override
  PaymentNetwork? get paymentNetwork;
  @override
  InvoiceStatusList get status;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
