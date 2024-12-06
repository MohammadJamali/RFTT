// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestInfoImpl _$$RequestInfoImplFromJson(Map<String, dynamic> json) =>
    _$RequestInfoImpl(
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      expectedAmount: json['expectedAmount'] as String,
      payee: TransactionActor.fromJson(json['payee'] as Map<String, dynamic>),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RequestInfoImplToJson(_$RequestInfoImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'expectedAmount': instance.expectedAmount,
      'payee': instance.payee,
      if (instance.timestamp case final value?) 'timestamp': value,
    };
