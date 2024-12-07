import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker_api/src/models/models.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  @JsonSerializable(includeIfNull: false)
  const factory Account({
    required String id,
    String? email,
    String? name,
    String? profilePicture,
    List<Invoice>? invoices,
    List<TransactionActor>? transactionActors,
    int? totalInvoices,
    int? paiedInvoices,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);
}
