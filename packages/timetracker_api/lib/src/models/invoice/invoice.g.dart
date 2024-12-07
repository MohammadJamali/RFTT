// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      requestInfo: json['requestInfo'] == null
          ? null
          : RequestInfo.fromJson(json['requestInfo'] as Map<String, dynamic>),
      paymentNetwork: json['paymentNetwork'] == null
          ? null
          : PaymentNetwork.fromJson(
              json['paymentNetwork'] as Map<String, dynamic>),
      contentData: json['contentData'] == null
          ? null
          : ContentData.fromJson(json['contentData'] as Map<String, dynamic>),
      signer: json['signer'] == null
          ? null
          : TransactionActor.fromJson(json['signer'] as Map<String, dynamic>),
      id: json['id'] as String?,
      projectId: json['projectId'] as String?,
      storageLocation: json['storageLocation'] as String?,
      channelId: json['channelId'] as String?,
      signature: json['signature'] as String?,
      account: json['account'] == null
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
      state: $enumDecodeNullable(_$InvoiceStateEnumMap, json['state']) ??
          InvoiceState.created,
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      if (instance.requestInfo case final value?) 'requestInfo': value,
      if (instance.paymentNetwork case final value?) 'paymentNetwork': value,
      if (instance.contentData case final value?) 'contentData': value,
      if (instance.signer case final value?) 'signer': value,
      if (instance.id case final value?) 'id': value,
      if (instance.projectId case final value?) 'projectId': value,
      if (instance.storageLocation case final value?) 'storageLocation': value,
      if (instance.channelId case final value?) 'channelId': value,
      if (instance.signature case final value?) 'signature': value,
      if (instance.account case final value?) 'account': value,
      'state': _$InvoiceStateEnumMap[instance.state]!,
    };

const _$InvoiceStateEnumMap = {
  InvoiceState.pending: 'pending',
  InvoiceState.created: 'created',
  InvoiceState.accepted: 'accepted',
  InvoiceState.canceled: 'canceled',
};
