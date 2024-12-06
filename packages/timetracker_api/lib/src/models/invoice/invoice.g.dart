// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      payee: TransactionActor.fromJson(json['payee'] as Map<String, dynamic>),
      expectedAmount: json['expectedAmount'] as String,
      extensionsData: (json['extensionsData'] as List<dynamic>)
          .map((e) => ExtensionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      payer: json['payer'] == null
          ? null
          : TransactionActor.fromJson(json['payer'] as Map<String, dynamic>),
      paymentRecipient: json['paymentRecipient'] as String?,
      paymentNetwork: json['paymentNetwork'] == null
          ? null
          : PaymentNetwork.fromJson(
              json['paymentNetwork'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$InvoiceStatusListEnumMap, json['status']) ??
          InvoiceStatusList.Unpaid,
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'timestamp': instance.timestamp,
      'currency': instance.currency,
      'payee': instance.payee,
      'expectedAmount': instance.expectedAmount,
      'extensionsData': instance.extensionsData,
      'payer': instance.payer,
      'paymentRecipient': instance.paymentRecipient,
      'paymentNetwork': instance.paymentNetwork,
      'status': _$InvoiceStatusListEnumMap[instance.status]!,
    };

const _$InvoiceStatusListEnumMap = {
  InvoiceStatusList.Paid: 'Paid',
  InvoiceStatusList.Unpaid: 'Unpaid',
};
