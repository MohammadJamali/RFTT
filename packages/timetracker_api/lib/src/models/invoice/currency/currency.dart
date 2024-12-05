import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/invoice/enums/symbols.dart';
import 'package:timetracker_api/src/models/invoice/enums/currency_type.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    required CurrencyType type,
    required String value,
    required String network, 
    required int decimals, 
    required int chainId, 
    required CurrencySymbol symbol, 
    required String name,
  }) = _Currency;

  factory Currency.fromJson(Map<String, Object?> json) =>
      _$CurrencyFromJson(json);
}
