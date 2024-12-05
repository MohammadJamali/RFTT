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
      'feeAddress': instance.feeAddress,
      'feeAmount': instance.feeAmount,
      'paymentAddress': instance.paymentAddress,
      'paymentNetworkName': instance.paymentNetworkName,
      'content': instance.content,
      'salt': instance.salt,
    };
