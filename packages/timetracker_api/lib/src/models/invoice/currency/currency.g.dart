// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      type: $enumDecode(_$CurrencyTypeEnumMap, json['type']),
      value: json['value'] as String,
      network: json['network'] as String,
      decimals: (json['decimals'] as num).toInt(),
      chainId: (json['chainId'] as num).toInt(),
      symbol: $enumDecode(_$CurrencySymbolEnumMap, json['symbol']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'type': _$CurrencyTypeEnumMap[instance.type]!,
      'value': instance.value,
      'network': instance.network,
      'decimals': instance.decimals,
      'chainId': instance.chainId,
      'symbol': _$CurrencySymbolEnumMap[instance.symbol]!,
      'name': instance.name,
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
