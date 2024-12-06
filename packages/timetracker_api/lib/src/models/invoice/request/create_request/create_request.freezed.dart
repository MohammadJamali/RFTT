// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateInvoiceRequest _$CreateInvoiceRequestFromJson(Map<String, dynamic> json) {
  return _CreateInvoice.fromJson(json);
}

/// @nodoc
mixin _$CreateInvoiceRequest {
  RequestInfo get requestInfo => throw _privateConstructorUsedError;
  PaymentNetwork get paymentNetwork => throw _privateConstructorUsedError;
  ContentData get contentData => throw _privateConstructorUsedError;
  TransactionActor get signer => throw _privateConstructorUsedError;

  /// Serializes this CreateInvoiceRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateInvoiceRequestCopyWith<CreateInvoiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateInvoiceRequestCopyWith<$Res> {
  factory $CreateInvoiceRequestCopyWith(CreateInvoiceRequest value,
          $Res Function(CreateInvoiceRequest) then) =
      _$CreateInvoiceRequestCopyWithImpl<$Res, CreateInvoiceRequest>;
  @useResult
  $Res call(
      {RequestInfo requestInfo,
      PaymentNetwork paymentNetwork,
      ContentData contentData,
      TransactionActor signer});

  $RequestInfoCopyWith<$Res> get requestInfo;
  $PaymentNetworkCopyWith<$Res> get paymentNetwork;
  $ContentDataCopyWith<$Res> get contentData;
  $TransactionActorCopyWith<$Res> get signer;
}

/// @nodoc
class _$CreateInvoiceRequestCopyWithImpl<$Res,
        $Val extends CreateInvoiceRequest>
    implements $CreateInvoiceRequestCopyWith<$Res> {
  _$CreateInvoiceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestInfo = null,
    Object? paymentNetwork = null,
    Object? contentData = null,
    Object? signer = null,
  }) {
    return _then(_value.copyWith(
      requestInfo: null == requestInfo
          ? _value.requestInfo
          : requestInfo // ignore: cast_nullable_to_non_nullable
              as RequestInfo,
      paymentNetwork: null == paymentNetwork
          ? _value.paymentNetwork
          : paymentNetwork // ignore: cast_nullable_to_non_nullable
              as PaymentNetwork,
      contentData: null == contentData
          ? _value.contentData
          : contentData // ignore: cast_nullable_to_non_nullable
              as ContentData,
      signer: null == signer
          ? _value.signer
          : signer // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
    ) as $Val);
  }

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestInfoCopyWith<$Res> get requestInfo {
    return $RequestInfoCopyWith<$Res>(_value.requestInfo, (value) {
      return _then(_value.copyWith(requestInfo: value) as $Val);
    });
  }

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentNetworkCopyWith<$Res> get paymentNetwork {
    return $PaymentNetworkCopyWith<$Res>(_value.paymentNetwork, (value) {
      return _then(_value.copyWith(paymentNetwork: value) as $Val);
    });
  }

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentDataCopyWith<$Res> get contentData {
    return $ContentDataCopyWith<$Res>(_value.contentData, (value) {
      return _then(_value.copyWith(contentData: value) as $Val);
    });
  }

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionActorCopyWith<$Res> get signer {
    return $TransactionActorCopyWith<$Res>(_value.signer, (value) {
      return _then(_value.copyWith(signer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateInvoiceImplCopyWith<$Res>
    implements $CreateInvoiceRequestCopyWith<$Res> {
  factory _$$CreateInvoiceImplCopyWith(
          _$CreateInvoiceImpl value, $Res Function(_$CreateInvoiceImpl) then) =
      __$$CreateInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestInfo requestInfo,
      PaymentNetwork paymentNetwork,
      ContentData contentData,
      TransactionActor signer});

  @override
  $RequestInfoCopyWith<$Res> get requestInfo;
  @override
  $PaymentNetworkCopyWith<$Res> get paymentNetwork;
  @override
  $ContentDataCopyWith<$Res> get contentData;
  @override
  $TransactionActorCopyWith<$Res> get signer;
}

/// @nodoc
class __$$CreateInvoiceImplCopyWithImpl<$Res>
    extends _$CreateInvoiceRequestCopyWithImpl<$Res, _$CreateInvoiceImpl>
    implements _$$CreateInvoiceImplCopyWith<$Res> {
  __$$CreateInvoiceImplCopyWithImpl(
      _$CreateInvoiceImpl _value, $Res Function(_$CreateInvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestInfo = null,
    Object? paymentNetwork = null,
    Object? contentData = null,
    Object? signer = null,
  }) {
    return _then(_$CreateInvoiceImpl(
      requestInfo: null == requestInfo
          ? _value.requestInfo
          : requestInfo // ignore: cast_nullable_to_non_nullable
              as RequestInfo,
      paymentNetwork: null == paymentNetwork
          ? _value.paymentNetwork
          : paymentNetwork // ignore: cast_nullable_to_non_nullable
              as PaymentNetwork,
      contentData: null == contentData
          ? _value.contentData
          : contentData // ignore: cast_nullable_to_non_nullable
              as ContentData,
      signer: null == signer
          ? _value.signer
          : signer // ignore: cast_nullable_to_non_nullable
              as TransactionActor,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$CreateInvoiceImpl extends _CreateInvoice {
  const _$CreateInvoiceImpl(
      {required this.requestInfo,
      required this.paymentNetwork,
      required this.contentData,
      required this.signer})
      : super._();

  factory _$CreateInvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateInvoiceImplFromJson(json);

  @override
  final RequestInfo requestInfo;
  @override
  final PaymentNetwork paymentNetwork;
  @override
  final ContentData contentData;
  @override
  final TransactionActor signer;

  @override
  String toString() {
    return 'CreateInvoiceRequest(requestInfo: $requestInfo, paymentNetwork: $paymentNetwork, contentData: $contentData, signer: $signer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInvoiceImpl &&
            (identical(other.requestInfo, requestInfo) ||
                other.requestInfo == requestInfo) &&
            (identical(other.paymentNetwork, paymentNetwork) ||
                other.paymentNetwork == paymentNetwork) &&
            (identical(other.contentData, contentData) ||
                other.contentData == contentData) &&
            (identical(other.signer, signer) || other.signer == signer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestInfo, paymentNetwork, contentData, signer);

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInvoiceImplCopyWith<_$CreateInvoiceImpl> get copyWith =>
      __$$CreateInvoiceImplCopyWithImpl<_$CreateInvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateInvoiceImplToJson(
      this,
    );
  }
}

abstract class _CreateInvoice extends CreateInvoiceRequest {
  const factory _CreateInvoice(
      {required final RequestInfo requestInfo,
      required final PaymentNetwork paymentNetwork,
      required final ContentData contentData,
      required final TransactionActor signer}) = _$CreateInvoiceImpl;
  const _CreateInvoice._() : super._();

  factory _CreateInvoice.fromJson(Map<String, dynamic> json) =
      _$CreateInvoiceImpl.fromJson;

  @override
  RequestInfo get requestInfo;
  @override
  PaymentNetwork get paymentNetwork;
  @override
  ContentData get contentData;
  @override
  TransactionActor get signer;

  /// Create a copy of CreateInvoiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateInvoiceImplCopyWith<_$CreateInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
