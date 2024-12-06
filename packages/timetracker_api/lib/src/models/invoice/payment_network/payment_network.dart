import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_network.freezed.dart';
part 'payment_network.g.dart';

@freezed
class PaymentNetwork with _$PaymentNetwork {
  @JsonSerializable(includeIfNull: false)
  const factory PaymentNetwork({
    required String id,
    // 'sepolia'
    required String paymentNetworkName,
    // payeeIdentity
    required String paymentAddress,
    // feeRecipient
    required String feeAddress,
    //  '0'
    required String feeAmount,
  }) = _PaymentNetwork;

  factory PaymentNetwork.fromJson(Map<String, Object?> json) =>
      _$PaymentNetworkFromJson(json);
}
