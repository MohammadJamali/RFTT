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
  RequestInfo? get requestInfo => throw _privateConstructorUsedError;
  PaymentNetwork? get paymentNetwork => throw _privateConstructorUsedError;
  ContentData? get contentData => throw _privateConstructorUsedError;
  TransactionActor? get signer => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get projectId => throw _privateConstructorUsedError;
  String? get storageLocation => throw _privateConstructorUsedError;
  String? get channelId => throw _privateConstructorUsedError;
  String? get signature => throw _privateConstructorUsedError;
  InvoiceState get state => throw _privateConstructorUsedError;

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
      {RequestInfo? requestInfo,
      PaymentNetwork? paymentNetwork,
      ContentData? contentData,
      TransactionActor? signer,
      String? id,
      String? projectId,
      String? storageLocation,
      String? channelId,
      String? signature,
      InvoiceState state});

  $RequestInfoCopyWith<$Res>? get requestInfo;
  $PaymentNetworkCopyWith<$Res>? get paymentNetwork;
  $ContentDataCopyWith<$Res>? get contentData;
  $TransactionActorCopyWith<$Res>? get signer;
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
    Object? requestInfo = freezed,
    Object? paymentNetwork = freezed,
    Object? contentData = freezed,
    Object? signer = freezed,
    Object? id = freezed,
    Object? projectId = freezed,
    Object? storageLocation = freezed,
    Object? channelId = freezed,
    Object? signature = freezed,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      requestInfo: freezed == requestInfo
          ? _value.requestInfo
          : requestInfo // ignore: cast_nullable_to_non_nullable
              as RequestInfo?,
      paymentNetwork: freezed == paymentNetwork
          ? _value.paymentNetwork
          : paymentNetwork // ignore: cast_nullable_to_non_nullable
              as PaymentNetwork?,
      contentData: freezed == contentData
          ? _value.contentData
          : contentData // ignore: cast_nullable_to_non_nullable
              as ContentData?,
      signer: freezed == signer
          ? _value.signer
          : signer // ignore: cast_nullable_to_non_nullable
              as TransactionActor?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as InvoiceState,
    ) as $Val);
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestInfoCopyWith<$Res>? get requestInfo {
    if (_value.requestInfo == null) {
      return null;
    }

    return $RequestInfoCopyWith<$Res>(_value.requestInfo!, (value) {
      return _then(_value.copyWith(requestInfo: value) as $Val);
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

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentDataCopyWith<$Res>? get contentData {
    if (_value.contentData == null) {
      return null;
    }

    return $ContentDataCopyWith<$Res>(_value.contentData!, (value) {
      return _then(_value.copyWith(contentData: value) as $Val);
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionActorCopyWith<$Res>? get signer {
    if (_value.signer == null) {
      return null;
    }

    return $TransactionActorCopyWith<$Res>(_value.signer!, (value) {
      return _then(_value.copyWith(signer: value) as $Val);
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
      {RequestInfo? requestInfo,
      PaymentNetwork? paymentNetwork,
      ContentData? contentData,
      TransactionActor? signer,
      String? id,
      String? projectId,
      String? storageLocation,
      String? channelId,
      String? signature,
      InvoiceState state});

  @override
  $RequestInfoCopyWith<$Res>? get requestInfo;
  @override
  $PaymentNetworkCopyWith<$Res>? get paymentNetwork;
  @override
  $ContentDataCopyWith<$Res>? get contentData;
  @override
  $TransactionActorCopyWith<$Res>? get signer;
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
    Object? requestInfo = freezed,
    Object? paymentNetwork = freezed,
    Object? contentData = freezed,
    Object? signer = freezed,
    Object? id = freezed,
    Object? projectId = freezed,
    Object? storageLocation = freezed,
    Object? channelId = freezed,
    Object? signature = freezed,
    Object? state = null,
  }) {
    return _then(_$InvoiceImpl(
      requestInfo: freezed == requestInfo
          ? _value.requestInfo
          : requestInfo // ignore: cast_nullable_to_non_nullable
              as RequestInfo?,
      paymentNetwork: freezed == paymentNetwork
          ? _value.paymentNetwork
          : paymentNetwork // ignore: cast_nullable_to_non_nullable
              as PaymentNetwork?,
      contentData: freezed == contentData
          ? _value.contentData
          : contentData // ignore: cast_nullable_to_non_nullable
              as ContentData?,
      signer: freezed == signer
          ? _value.signer
          : signer // ignore: cast_nullable_to_non_nullable
              as TransactionActor?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as InvoiceState,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$InvoiceImpl extends _Invoice {
  const _$InvoiceImpl(
      {this.requestInfo,
      this.paymentNetwork,
      this.contentData,
      this.signer,
      this.id,
      this.projectId,
      this.storageLocation,
      this.channelId,
      this.signature,
      this.state = InvoiceState.created})
      : super._();

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final RequestInfo? requestInfo;
  @override
  final PaymentNetwork? paymentNetwork;
  @override
  final ContentData? contentData;
  @override
  final TransactionActor? signer;
  @override
  final String? id;
  @override
  final String? projectId;
  @override
  final String? storageLocation;
  @override
  final String? channelId;
  @override
  final String? signature;
  @override
  @JsonKey()
  final InvoiceState state;

  @override
  String toString() {
    return 'Invoice(requestInfo: $requestInfo, paymentNetwork: $paymentNetwork, contentData: $contentData, signer: $signer, id: $id, projectId: $projectId, storageLocation: $storageLocation, channelId: $channelId, signature: $signature, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.requestInfo, requestInfo) ||
                other.requestInfo == requestInfo) &&
            (identical(other.paymentNetwork, paymentNetwork) ||
                other.paymentNetwork == paymentNetwork) &&
            (identical(other.contentData, contentData) ||
                other.contentData == contentData) &&
            (identical(other.signer, signer) || other.signer == signer) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestInfo,
      paymentNetwork,
      contentData,
      signer,
      id,
      projectId,
      storageLocation,
      channelId,
      signature,
      state);

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

abstract class _Invoice extends Invoice {
  const factory _Invoice(
      {final RequestInfo? requestInfo,
      final PaymentNetwork? paymentNetwork,
      final ContentData? contentData,
      final TransactionActor? signer,
      final String? id,
      final String? projectId,
      final String? storageLocation,
      final String? channelId,
      final String? signature,
      final InvoiceState state}) = _$InvoiceImpl;
  const _Invoice._() : super._();

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  RequestInfo? get requestInfo;
  @override
  PaymentNetwork? get paymentNetwork;
  @override
  ContentData? get contentData;
  @override
  TransactionActor? get signer;
  @override
  String? get id;
  @override
  String? get projectId;
  @override
  String? get storageLocation;
  @override
  String? get channelId;
  @override
  String? get signature;
  @override
  InvoiceState get state;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
