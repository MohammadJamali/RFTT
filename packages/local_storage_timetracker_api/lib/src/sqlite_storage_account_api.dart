import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:local_storage_timetracker_api/src/utils/database.dart';
import 'package:timetracker_api/timetracker_api.dart';

class SqliteStorageAccountApi extends IAccountApi {
  final _dbHelper = DatabaseHelper();

  @override
  Future<Account?> getAccountByTransactionActor(TransactionActor actor) async {
    final db = await _dbHelper.database;
    final signerQuery = await conditionalQuery(
      db,
      DatabaseHelper.tableTransactionsActor,
      actor.toJson(),
    );
    final signerId = signerQuery.firstOrNull?['accountId'] as String?;
    if (signerId == null) return null;

    final accountQuery = await list(id: signerId);
    if (accountQuery.isEmpty) return null;

    return accountQuery.first;
  }

  @override
  Future<List<TransactionActor>> getTransactionActorByAccount(
    String accountId,
  ) async {
    final db = await _dbHelper.database;
    final transactionActorQuery = await conditionalQuery(
      db,
      DatabaseHelper.tableTransactionsActor,
      {'accountId': accountId},
    );

    return transactionActorQuery.map(TransactionActor.fromJson).toList();
  }

  @override
  Future<void> add(Account account) async {
    if (account.invoices != null) {
      throw Exception('Can not add invoices here');
    }
    if (account.transactionActors != null) {
      throw Exception('You have to add/remove transaction actors seperatly');
    }

    final db = await _dbHelper.database;
    await db.insert(
      DatabaseHelper.tableAccounts,
      account.toJson(),
    );
  }

  @override
  Future<void> addTransactionActor({
    required String accountId,
    required TransactionActor actor,
  }) async {
    final db = await _dbHelper.database;
    await db.insert(DatabaseHelper.tableTransactionsActor, {
      ...actor.toJson(),
      'accountId': accountId,
    });
  }

  @override
  Future<void> deleteTransactionActor({
    required String accountId,
    required TransactionActor actor,
  }) async {
    final db = await _dbHelper.database;

    final actorQuery = await conditionalQuery(
      db,
      DatabaseHelper.tableTransactionsActor,
      {...actor.toJson(), 'accountId': accountId},
    );

    if (actorQuery.isEmpty) return;
    final actorId = actorQuery.first['id'];

    await db.delete(
      DatabaseHelper.tableTransactionsActor,
      where: 'id = ?',
      whereArgs: [actorId],
    );
  }

  @override
  Future<Account?> delete(String accountId) async {
    final db = await _dbHelper.database;
    final account = await list(id: accountId);
    if (account.isNotEmpty) {
      await db.delete(
        DatabaseHelper.tableAccounts,
        where: 'id = ?',
        whereArgs: [accountId],
      );
      return account.first;
    }

    return null;
  }

  @override
  Future<void> update(Account account) async {
    if (account.invoices != null) {
      throw Exception('Can not update invoices here');
    }
    if (account.transactionActors != null) {
      throw Exception('You have to add/remove transaction actors seperatly');
    }

    final db = await _dbHelper.database;
    await db.update(
      DatabaseHelper.tableAccounts,
      account.copyWith(invoices: null, transactionActors: null).toJson(),
      where: 'id = ?',
      whereArgs: [account.id],
    );
  }

  @override
  Future<List<Account>> list({
    String? id,
    String? name,
    bool includeTransactionActors = false,
  }) async {
    final db = await _dbHelper.database;

    final accountQuery = await conditionalQuery(
      db,
      DatabaseHelper.tableAccounts,
      {'id': id},
    );

    final accounts = accountQuery.map(Account.fromJson).toList();

    if (includeTransactionActors) {
      for (var i = 0; i < accounts.length; i++) {
        accounts[i] = accounts[i].copyWith(
          transactionActors: await getTransactionActorByAccount(accounts[i].id),
        );
      }
    }

    return accounts;
  }

  @override
  Future<void> dispose() async {}
}
