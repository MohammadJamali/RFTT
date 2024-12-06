import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/utils/crypto.dart';
import 'package:timetracker_api/timetracker_api.dart';

part 'create_request.freezed.dart';
part 'create_request.g.dart';

@freezed
class CreateInvoiceRequest with _$CreateInvoiceRequest {
  @JsonSerializable(includeIfNull: false)
  const CreateInvoiceRequest._();

  @JsonSerializable(includeIfNull: false)
  const factory CreateInvoiceRequest({
    required RequestInfo requestInfo,
    required PaymentNetwork paymentNetwork,
    required ContentData contentData,
    required TransactionActor signer,
  }) = _CreateInvoice;

  Map<String, dynamic> toApiJson() {
    final json = requestInfo.toJson();

    final extensionsData = [
      if (paymentNetwork case final value)
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

  factory CreateInvoiceRequest.fromJson(Map<String, Object?> json) =>
      _$CreateInvoiceRequestFromJson(json);
}
