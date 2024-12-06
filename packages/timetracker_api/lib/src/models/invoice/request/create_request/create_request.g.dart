// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateInvoiceImpl _$$CreateInvoiceImplFromJson(Map<String, dynamic> json) =>
    _$CreateInvoiceImpl(
      requestInfo:
          RequestInfo.fromJson(json['requestInfo'] as Map<String, dynamic>),
      paymentNetwork: PaymentNetwork.fromJson(
          json['paymentNetwork'] as Map<String, dynamic>),
      contentData:
          ContentData.fromJson(json['contentData'] as Map<String, dynamic>),
      signer: TransactionActor.fromJson(json['signer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateInvoiceImplToJson(_$CreateInvoiceImpl instance) =>
    <String, dynamic>{
      'requestInfo': instance.requestInfo,
      'paymentNetwork': instance.paymentNetwork,
      'contentData': instance.contentData,
      'signer': instance.signer,
    };
