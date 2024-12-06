import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_response.freezed.dart';
part 'create_response.g.dart';

@freezed
class InvoiceCreatedResponse with _$InvoiceCreatedResponse {
  const factory InvoiceCreatedResponse({
    Map<String, dynamic>? events,
    int? eventsCount,
    InvoiceCreatedResponseMeta? meta,
    Map<String, dynamic>? result,
  }) = _InvoiceCreatedResponse;

  factory InvoiceCreatedResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreatedResponseFromJson(json);
}

@freezed
class InvoiceCreatedResponseMeta with _$InvoiceCreatedResponseMeta {
  const factory InvoiceCreatedResponseMeta({
    String? transactionStorageLocation,
    InvoiceCreatedResponseStorageMeta? storageMeta,
    String? state,
    String? storageType,
    int? timestamp,
  }) = _InvoiceCreatedResponseMeta;

  factory InvoiceCreatedResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreatedResponseMetaFromJson(json);
}

@freezed
class InvoiceCreatedResponseStorageMeta
    with _$InvoiceCreatedResponseStorageMeta {
  const factory InvoiceCreatedResponseStorageMeta({
    Map<String, dynamic>? ipfs,
    Map<String, dynamic>? local,
    InvoiceCreatedResponseEthereumData? ethereum,
  }) = _InvoiceCreatedResponseStorageMeta;

  factory InvoiceCreatedResponseStorageMeta.fromJson(
          Map<String, dynamic> json) =>
      _$InvoiceCreatedResponseStorageMetaFromJson(json);
}

@freezed
class InvoiceCreatedResponseEthereumData
    with _$InvoiceCreatedResponseEthereumData {
  const factory InvoiceCreatedResponseEthereumData({
    int? nonce,
    String? transactionHash,
    int? blockConfirmation,
    int? blockNumber,
    int? blockTimestamp,
    String? networkName,
    String? smartContractAddress,
  }) = _InvoiceCreatedResponseEthereumData;

  factory InvoiceCreatedResponseEthereumData.fromJson(
          Map<String, dynamic> json) =>
      _$InvoiceCreatedResponseEthereumDataFromJson(json);
}
