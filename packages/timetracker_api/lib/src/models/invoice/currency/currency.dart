import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/invoice/enums/currency_type.dart';
import 'package:timetracker_api/src/models/invoice/enums/symbols.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  @JsonSerializable(includeIfNull: false)
  const factory Currency({
    required String network,
    required CurrencyType type,
    required String value,
    @JsonKey(includeToJson: false) required String name,
    @JsonKey(includeToJson: false) required int decimals,
    @JsonKey(includeToJson: false) required int chainId,
    @JsonKey(includeToJson: false) required CurrencySymbol symbol,
  }) = _Currency;

  factory Currency.fromJson(Map<String, Object?> json) =>
      _$CurrencyFromJson(json);
}
