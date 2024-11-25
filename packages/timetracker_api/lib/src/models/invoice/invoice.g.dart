// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      timestamp: json['timestamp'] as String,
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      payee: TransactionActor.fromJson(json['payee'] as Map<String, dynamic>),
      payer: TransactionActor.fromJson(json['payer'] as Map<String, dynamic>),
      paymentRecipient: json['paymentRecipient'] as String,
      contentData:
          ContentData.fromJson(json['contentData'] as Map<String, dynamic>),
      paymentNetwork: PaymentNetwork.fromJson(
          json['paymentNetwork'] as Map<String, dynamic>,),
      feeRecipient: json['feeRecipient'] as String? ??
          '0x0000000000000000000000000000000000000000',
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'timestamp': instance.timestamp,
      'currency': instance.currency,
      'payee': instance.payee,
      'payer': instance.payer,
      'paymentRecipient': instance.paymentRecipient,
      'contentData': instance.contentData,
      'paymentNetwork': instance.paymentNetwork,
      'feeRecipient': instance.feeRecipient,
    };
