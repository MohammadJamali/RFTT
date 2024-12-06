// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension_data_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtensionDataParameterImpl _$$ExtensionDataParameterImplFromJson(
        Map<String, dynamic> json) =>
    _$ExtensionDataParameterImpl(
      feeAddress: json['feeAddress'] as String?,
      feeAmount: json['feeAmount'] as String?,
      paymentAddress: json['paymentAddress'] as String?,
      paymentNetworkName: json['paymentNetworkName'] as String?,
      content: json['content'] == null
          ? null
          : ContentData.fromJson(json['content'] as Map<String, dynamic>),
      salt: json['salt'] as String?,
    );

Map<String, dynamic> _$$ExtensionDataParameterImplToJson(
        _$ExtensionDataParameterImpl instance) =>
    <String, dynamic>{
      if (instance.feeAddress case final value?) 'feeAddress': value,
      if (instance.feeAmount case final value?) 'feeAmount': value,
      if (instance.paymentAddress case final value?) 'paymentAddress': value,
      if (instance.paymentNetworkName case final value?)
        'paymentNetworkName': value,
      if (instance.content case final value?) 'content': value,
      if (instance.salt case final value?) 'salt': value,
    };
