import 'package:timetracker_api/timetracker_api.dart';

/// {@template account_repository}
/// A repository that handles `account` related requests.
/// {@endtemplate}
class AccountRepository {
  /// {@macro account_repository}
  const AccountRepository({
    required IAccountApi localApi,
  }) : _api = localApi;

  final IAccountApi _api;

  Future<List<Account>> list({
    String? id,
    String? name,
    bool includeTransactionActors = false,
  }) =>
      _api.list(
        id: id,
        name: name,
        includeTransactionActors: includeTransactionActors,
      );
  Future<void> add(Account account) => _api.add(account);
  Future<void> update(Account account) => _api.update(account);
  Future<void> delete(String accountId) => _api.delete(accountId);

  Future<void> addTransactionActor(
    String accountId,
    TransactionActor actor,
  ) =>
      _api.addTransactionActor(
        accountId: accountId,
        actor: actor,
      );
  Future<void> deleteTransactionActor(
    String accountId,
    TransactionActor actor,
  ) =>
      _api.deleteTransactionActor(
        accountId: accountId,
        actor: actor,
      );

  Future<Account?> getAccountByTransactionActor(TransactionActor actor) =>
      _api.getAccountByTransactionActor(actor);

  Future<List<TransactionActor>> getTransactionActorByAccount(
    String accountId,
  ) =>
      _api.getTransactionActorByAccount(accountId);
}
