import 'package:timetracker_api/timetracker_api.dart';

/// {@template account_api}
/// The interface for an API that provides access to a list of accounts.
/// {@endtemplate}
abstract class IAccountApi {
  /// {@macro account_api}
  const IAccountApi();

  Future<void> add(Account account);
  Future<void> delete(String accountId);
  Future<void> update(Account account);

  Future<void> addTransactionActor({
    required String accountId,
    required TransactionActor actor,
  });
  Future<void> deleteTransactionActor({
    required String accountId,
    required TransactionActor actor,
  });

  Future<Account?> getAccountByTransactionActor(TransactionActor actor);
  Future<List<TransactionActor>> getTransactionActorByAccount(String accountId);
  Future<List<Account>> list({
    String? id,
    String? name,
    bool includeTransactionActors = false,
  });

  Future<void> dispose();
}

/// Error thrown when a [Account] with a given id is not found.
class AccountNotFoundException implements Exception {}
