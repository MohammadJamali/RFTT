import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/utils/crypto.dart';
import 'package:timetracker_api/timetracker_api.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  @JsonSerializable(includeIfNull: false)
  const Invoice._();

  @JsonSerializable(includeIfNull: false)
  const factory Invoice({
    RequestInfo? requestInfo,
    PaymentNetwork? paymentNetwork,
    ContentData? contentData,
    TransactionActor? signer,
    String? id,
    String? projectId,
    String? storageLocation,
    String? channelId,
    String? signature,
    Account? account,
    @Default(InvoiceState.created) InvoiceState state,
  }) = _Invoice;

  Map<String, dynamic> toApiJson() {
    final json = requestInfo!.toJson();

    final extensionsData = [
      if (paymentNetwork case final value?)
        ExtensionData(
          id: 'pn-erc20-fee-proxy-contract',
          action: 'create',
          version: '0.2.0',
          parameters: ExtensionDataParameter(
            salt: generateSalt(),
            paymentAddress: value.paymentAddress,
            paymentNetworkName: value.paymentNetworkName,
            feeAddress: value.feeAddress,
            feeAmount: value.feeAmount,
          ),
        ).toJson(),
      if (contentData case final value)
        ExtensionData(
          id: 'content-data',
          action: 'create',
          version: '0.1.0',
          parameters: ExtensionDataParameter(
            content: value,
          ),
        ).toJson(),
    ];

    if (extensionsData.isNotEmpty) json['extensionsData'] = extensionsData;

    return json;
  }

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}
