// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_network.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentNetworkImpl _$$PaymentNetworkImplFromJson(Map<String, dynamic> json) =>
    _$PaymentNetworkImpl(
      id: json['id'] as String,
      paymentNetworkName: json['paymentNetworkName'] as String,
      paymentAddress: json['paymentAddress'] as String,
      feeAddress: json['feeAddress'] as String,
      feeAmount: json['feeAmount'] as String,
    );

Map<String, dynamic> _$$PaymentNetworkImplToJson(
        _$PaymentNetworkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentNetworkName': instance.paymentNetworkName,
      'paymentAddress': instance.paymentAddress,
      'feeAddress': instance.feeAddress,
      'feeAmount': instance.feeAmount,
    };
