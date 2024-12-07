// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceTransactionsImpl _$$InvoiceTransactionsImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceTransactionsImpl(
      meta: json['meta'] == null
          ? null
          : InvoiceTransactionMeta.fromJson(
              json['meta'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : InvoiceTransactionResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceTransactionsImplToJson(
        _$InvoiceTransactionsImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'result': instance.result,
    };

_$InvoiceTransactionMetaImpl _$$InvoiceTransactionMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceTransactionMetaImpl(
      transactionsStorageLocation:
          (json['transactionsStorageLocation'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      storageMeta: json['storageMeta'] as List<dynamic>?,
    );

Map<String, dynamic> _$$InvoiceTransactionMetaImplToJson(
        _$InvoiceTransactionMetaImpl instance) =>
    <String, dynamic>{
      'transactionsStorageLocation': instance.transactionsStorageLocation,
      'storageMeta': instance.storageMeta,
    };

_$InvoiceTransactionResultImpl _$$InvoiceTransactionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceTransactionResultImpl(
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => TransactionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InvoiceTransactionResultImplToJson(
        _$InvoiceTransactionResultImpl instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };

_$TransactionItemImpl _$$TransactionItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionItemImpl(
      state: $enumDecodeNullable(_$InvoiceStateEnumMap, json['state']),
      timestamp: (json['timestamp'] as num?)?.toInt(),
      transaction: json['transaction'] == null
          ? null
          : InvoiceTransactionData.fromJson(
              json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionItemImplToJson(
        _$TransactionItemImpl instance) =>
    <String, dynamic>{
      'state': _$InvoiceStateEnumMap[instance.state],
      'timestamp': instance.timestamp,
      'transaction': instance.transaction,
    };

const _$InvoiceStateEnumMap = {
  InvoiceState.pending: 'pending',
  InvoiceState.created: 'created',
  InvoiceState.accepted: 'accepted',
  InvoiceState.canceled: 'canceled',
};

_$InvoiceTransactionDataImpl _$$InvoiceTransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceTransactionDataImpl(
      data: json['data'] == null
          ? null
          : TransactionDetail.fromJson(json['data'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$InvoiceTransactionDataImplToJson(
        _$InvoiceTransactionDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'version': instance.version,
    };
