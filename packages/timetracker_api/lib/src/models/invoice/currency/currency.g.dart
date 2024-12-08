// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      network: json['network'] as String,
      type: $enumDecode(_$CurrencyTypeEnumMap, json['type']),
      value: json['value'] as String,
      name: json['name'] as String?,
      decimals: (json['decimals'] as num?)?.toInt(),
      chainId: (json['chainId'] as num?)?.toInt(),
      symbol: $enumDecodeNullable(_$CurrencySymbolEnumMap, json['symbol']),
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'network': instance.network,
      'type': _$CurrencyTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$CurrencyTypeEnumMap = {
  CurrencyType.eth: 'eth',
  CurrencyType.btc: 'btc',
  CurrencyType.iso4217: 'iso4217',
  CurrencyType.erc20: 'erc20',
  CurrencyType.erc777: 'erc777',
};

const _$CurrencySymbolEnumMap = {
  CurrencySymbol.FAU: 'FAU',
  CurrencySymbol.USDC: 'USDC',
};
