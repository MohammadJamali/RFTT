// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceCreatedResponseImpl _$$InvoiceCreatedResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceCreatedResponseImpl(
      events: json['events'] as Map<String, dynamic>?,
      eventsCount: (json['eventsCount'] as num?)?.toInt(),
      meta: json['meta'] == null
          ? null
          : InvoiceCreatedResponseMeta.fromJson(
              json['meta'] as Map<String, dynamic>),
      result: json['result'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$InvoiceCreatedResponseImplToJson(
        _$InvoiceCreatedResponseImpl instance) =>
    <String, dynamic>{
      'events': instance.events,
      'eventsCount': instance.eventsCount,
      'meta': instance.meta,
      'result': instance.result,
    };

_$InvoiceCreatedResponseMetaImpl _$$InvoiceCreatedResponseMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceCreatedResponseMetaImpl(
      transactionStorageLocation: json['transactionStorageLocation'] as String?,
      storageMeta: json['storageMeta'] == null
          ? null
          : InvoiceCreatedResponseStorageMeta.fromJson(
              json['storageMeta'] as Map<String, dynamic>),
      state: json['state'] as String?,
      storageType: json['storageType'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InvoiceCreatedResponseMetaImplToJson(
        _$InvoiceCreatedResponseMetaImpl instance) =>
    <String, dynamic>{
      'transactionStorageLocation': instance.transactionStorageLocation,
      'storageMeta': instance.storageMeta,
      'state': instance.state,
      'storageType': instance.storageType,
      'timestamp': instance.timestamp,
    };

_$InvoiceCreatedResponseStorageMetaImpl
    _$$InvoiceCreatedResponseStorageMetaImplFromJson(
            Map<String, dynamic> json) =>
        _$InvoiceCreatedResponseStorageMetaImpl(
          ipfs: json['ipfs'] as Map<String, dynamic>?,
          local: json['local'] as Map<String, dynamic>?,
          ethereum: json['ethereum'] == null
              ? null
              : InvoiceCreatedResponseEthereumData.fromJson(
                  json['ethereum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$InvoiceCreatedResponseStorageMetaImplToJson(
        _$InvoiceCreatedResponseStorageMetaImpl instance) =>
    <String, dynamic>{
      'ipfs': instance.ipfs,
      'local': instance.local,
      'ethereum': instance.ethereum,
    };

_$InvoiceCreatedResponseEthereumDataImpl
    _$$InvoiceCreatedResponseEthereumDataImplFromJson(
            Map<String, dynamic> json) =>
        _$InvoiceCreatedResponseEthereumDataImpl(
          nonce: (json['nonce'] as num?)?.toInt(),
          transactionHash: json['transactionHash'] as String?,
          blockConfirmation: (json['blockConfirmation'] as num?)?.toInt(),
          blockNumber: (json['blockNumber'] as num?)?.toInt(),
          blockTimestamp: (json['blockTimestamp'] as num?)?.toInt(),
          networkName: json['networkName'] as String?,
          smartContractAddress: json['smartContractAddress'] as String?,
        );

Map<String, dynamic> _$$InvoiceCreatedResponseEthereumDataImplToJson(
        _$InvoiceCreatedResponseEthereumDataImpl instance) =>
    <String, dynamic>{
      'nonce': instance.nonce,
      'transactionHash': instance.transactionHash,
      'blockConfirmation': instance.blockConfirmation,
      'blockNumber': instance.blockNumber,
      'blockTimestamp': instance.blockTimestamp,
      'networkName': instance.networkName,
      'smartContractAddress': instance.smartContractAddress,
    };
