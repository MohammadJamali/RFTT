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
  String get timestamp => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  TransactionActor get payee => throw _privateConstructorUsedError;
  TransactionActor get payer => throw _privateConstructorUsedError;
  String get paymentRecipient => throw _privateConstructorUsedError;
  ContentData get contentData => throw _privateConstructorUsedError;
  PaymentNetwork get paymentNetwork => throw _privateConstructorUsedError;
  String get feeRecipient => throw _privateConstructorUsedError;

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
      String timestamp,
      Currency currency,
      TransactionActor payee,
      TransactionActor payer,
      String paymentRecipient,
      ContentData contentData,
      PaymentNetwork paymentNetwork,
      String feeRecipient});

  $CurrencyCopyWith<$Res> get currency;
  $TransactionActorCopyWith<$Res> get payee;
  $TransactionActorCopyWith<$Res> get payer;
  $ContentDataCopyWith<$Res> get contentData;
  $PaymentNetworkCopyWith<$Res> get paymentNetwork;
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
    Object? payer = null,
    Object? paymentRecipient = null,
    Object? contentData = null,
    Object? paymentNetwork = null,
    Object? feeRecipient = null,
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
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      payee: null == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
      payer: null == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
      paymentRecipient: null == paymentRecipient
          ? _value.paymentRecipient
          : paymentRecipient // ignore: cast_nullable_to_non_nullable
              as String,
      contentData: null == contentData
          ? _value.contentData
          : contentData // ignore: cast_nullable_to_non_nullable
              as ContentData,
      paymentNetwork: null == paymentNetwork
          ? _value.paymentNetwork
          : paymentNetwork // ignore: cast_nullable_to_non_nullable
              as PaymentNetwork,
      feeRecipient: null == feeRecipient
          ? _value.feeRecipient
          : feeRecipient // ignore: cast_nullable_to_non_nullable
              as String,
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
  $TransactionActorCopyWith<$Res> get payer {
    return $TransactionActorCopyWith<$Res>(_value.payer, (value) {
      return _then(_value.copyWith(payer: value) as $Val);
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentDataCopyWith<$Res> get contentData {
    return $ContentDataCopyWith<$Res>(_value.contentData, (value) {
      return _then(_value.copyWith(contentData: value) as $Val);
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentNetworkCopyWith<$Res> get paymentNetwork {
    return $PaymentNetworkCopyWith<$Res>(_value.paymentNetwork, (value) {
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
      String timestamp,
      Currency currency,
      TransactionActor payee,
      TransactionActor payer,
      String paymentRecipient,
      ContentData contentData,
      PaymentNetwork paymentNetwork,
      String feeRecipient});

  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $TransactionActorCopyWith<$Res> get payee;
  @override
  $TransactionActorCopyWith<$Res> get payer;
  @override
  $ContentDataCopyWith<$Res> get contentData;
  @override
  $PaymentNetworkCopyWith<$Res> get paymentNetwork;
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
    Object? payer = null,
    Object? paymentRecipient = null,
    Object? contentData = null,
    Object? paymentNetwork = null,
    Object? feeRecipient = null,
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
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      payee: null == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
      payer: null == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
      paymentRecipient: null == paymentRecipient
          ? _value.paymentRecipient
          : paymentRecipient // ignore: cast_nullable_to_non_nullable
              as String,
      contentData: null == contentData
          ? _value.contentData
          : contentData // ignore: cast_nullable_to_non_nullable
              as ContentData,
      paymentNetwork: null == paymentNetwork
          ? _value.paymentNetwork
          : paymentNetwork // ignore: cast_nullable_to_non_nullable
              as PaymentNetwork,
      feeRecipient: null == feeRecipient
          ? _value.feeRecipient
          : feeRecipient // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.payer,
      required this.paymentRecipient,
      required this.contentData,
      required this.paymentNetwork,
      this.feeRecipient = '0x0000000000000000000000000000000000000000'});

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final String timestamp;
  @override
  final Currency currency;
  @override
  final TransactionActor payee;
  @override
  final TransactionActor payer;
  @override
  final String paymentRecipient;
  @override
  final ContentData contentData;
  @override
  final PaymentNetwork paymentNetwork;
  @override
  @JsonKey()
  final String feeRecipient;

  @override
  String toString() {
    return 'Invoice(id: $id, projectId: $projectId, timestamp: $timestamp, currency: $currency, payee: $payee, payer: $payer, paymentRecipient: $paymentRecipient, contentData: $contentData, paymentNetwork: $paymentNetwork, feeRecipient: $feeRecipient)';
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
            (identical(other.payer, payer) || other.payer == payer) &&
            (identical(other.paymentRecipient, paymentRecipient) ||
                other.paymentRecipient == paymentRecipient) &&
            (identical(other.contentData, contentData) ||
                other.contentData == contentData) &&
            (identical(other.paymentNetwork, paymentNetwork) ||
                other.paymentNetwork == paymentNetwork) &&
            (identical(other.feeRecipient, feeRecipient) ||
                other.feeRecipient == feeRecipient));
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
      payer,
      paymentRecipient,
      contentData,
      paymentNetwork,
      feeRecipient);

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
      required final String timestamp,
      required final Currency currency,
      required final TransactionActor payee,
      required final TransactionActor payer,
      required final String paymentRecipient,
      required final ContentData contentData,
      required final PaymentNetwork paymentNetwork,
      final String feeRecipient}) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  String get timestamp;
  @override
  Currency get currency;
  @override
  TransactionActor get payee;
  @override
  TransactionActor get payer;
  @override
  String get paymentRecipient;
  @override
  ContentData get contentData;
  @override
  PaymentNetwork get paymentNetwork;
  @override
  String get feeRecipient;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
