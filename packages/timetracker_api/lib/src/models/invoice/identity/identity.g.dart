// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IdentityImpl _$$IdentityImplFromJson(Map<String, dynamic> json) =>
    _$IdentityImpl(
      type: $enumDecode(_$IdentityTypeEnumMap, json['type']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$IdentityImplToJson(_$IdentityImpl instance) =>
    <String, dynamic>{
      'type': _$IdentityTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$IdentityTypeEnumMap = {
  IdentityType.ethereumAddress: 'ethereumAddress',
  IdentityType.ethereumSmartContract: 'ethereumSmartContract',
};
