import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/models.dart';

part 'invoice_transactions.freezed.dart';
part 'invoice_transactions.g.dart';

@freezed
class InvoiceTransactions with _$InvoiceTransactions {
  const factory InvoiceTransactions({
    InvoiceTransactionMeta? meta,
    InvoiceTransactionResult? result,
  }) = _InvoiceTransactions;

  factory InvoiceTransactions.fromJson(Map<String, dynamic> json) =>
      _$InvoiceTransactionsFromJson(json);
}

@freezed
class InvoiceTransactionMeta with _$InvoiceTransactionMeta {
  const factory InvoiceTransactionMeta({
    List<String>? transactionsStorageLocation,
    List<dynamic>? storageMeta,
  }) = _InvoiceTransactionMeta;

  factory InvoiceTransactionMeta.fromJson(Map<String, dynamic> json) =>
      _$InvoiceTransactionMetaFromJson(json);
}

@freezed
class InvoiceTransactionResult with _$InvoiceTransactionResult {
  const factory InvoiceTransactionResult({
    List<TransactionItem>? transactions,
  }) = _InvoiceTransactionResult;

  factory InvoiceTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$InvoiceTransactionResultFromJson(json);
}

@freezed
class TransactionItem with _$TransactionItem {
  const factory TransactionItem({
    InvoiceState? state,
    int? timestamp,
    InvoiceTransactionData? transaction,
  }) = _TransactionItem;

  factory TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemFromJson(json);
}

@freezed
class InvoiceTransactionData with _$InvoiceTransactionData {
  const factory InvoiceTransactionData({
    TransactionDetail? data,
    String? version,
  }) = _InvoiceTransactionData;

  factory InvoiceTransactionData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceTransactionDataFromJson(json);
}
