import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:local_storage_timetracker_api/src/utils/database.dart';
import 'package:rxdart/subjects.dart';
import 'package:sqflite/sqflite.dart';
import 'package:timetracker_api/timetracker_api.dart';

class SqliteStorageInvoiceApi extends ILocalStorageInvoiceApi {
  final _dbHelper = DatabaseHelper();
  final _invoiceStream = BehaviorSubject<Invoice>();

  @override
  Future<List<Invoice>> searchInvoicesByAccountName(String partialName) async {
    final db = await _dbHelper.database;

    final query = await db.rawQuery(
      '''
      SELECT 
        i.id AS invoiceId,
        i.projectId,
        i.signerId,
        i.storageLocation,
        i.channelId,
        i.signature,
        i.state,
        a.id AS accountId,
        a.title AS accountTitle,
        a.email AS accountEmail,
        a.name AS accountName,
        a.profilePicture AS accountProfilePicture
      FROM 
        tableInvoices i
      JOIN 
        tableAccounts a
      ON 
        a.id = (SELECT accountId FROM tableProjects WHERE id = i.projectId)
      WHERE 
        a.name LIKE '%' || ? || '%';
      ''',
      [partialName],
    );

    final result = <Invoice>[];
    for (final item in query) {
      final signerQuery = await conditionalQuery(
        db,
        DatabaseHelper.tableTransactionsActor,
        {'id': item['id']! as String},
      );
      final signer = TransactionActor.fromJson(signerQuery.first);

      result.add(
        Invoice(
          id: item['id'] as String?,
          projectId: item['projectId'] as String?,
          signer: signer,
          storageLocation: item['storageLocation'] as String?,
          channelId: item['channelId'] as String?,
          signature: item['signature'] as String?,
          state: InvoiceState.parse(item['state']! as String),
        ),
      );
    }

    return result;
  }

  Map<String, dynamic> encodeRequestInfo(RequestInfo requestInfo) {
    final map = requestInfo.toJson();

    map['currency'] = map['currency'].name;
    map['payee'] = map['payee'].type + ' ' + map['payee'].value;

    return map;
  }

  RequestInfo dencodeRequestInfo(Map<String, dynamic> requestMap) {
    final c = requestMap['currency'];
    requestMap['currency'] = currencies.values
        .firstWhere((e) => e.name == requestMap['currency'])
        .toJson();
    requestMap['payee'] = (requestMap['payee']! as String).split(' ');
    requestMap['payee'] = TransactionActor(
            type: requestMap['payee'][0]! as String,
            value: requestMap['payee'][1]! as String)
        .toJson();

    final map = RequestInfo.fromJson(requestMap).copyWith(
        currency: currencies.values
            .firstWhere((e) => e.name == c));

    return map;
  }

  @override
  Future<void> add(Invoice invoice) async {
    final db = await _dbHelper.database;

    final signerId = await _getTransactionActorId(db, invoice.signer!);
    if (signerId == null) {
      throw Exception('Transaction actor need to be defined first');
    }

    await db.transaction((txn) async {
      final invoiceId = invoice.id!;

      await txn.insert(DatabaseHelper.tableInvoices, {
        ..._encodePureInvoice(invoice),
        'signerId': signerId,
      });

      await txn.insert(DatabaseHelper.tableRequestsInfo, {
        ...encodeRequestInfo(invoice.requestInfo!),
        'invoiceId': invoiceId,
      });
      await txn.insert(DatabaseHelper.tablePaymentsNetwork, {
        ...invoice.paymentNetwork!.toJson(),
        'invoiceId': invoiceId,
      });
      await txn.insert(DatabaseHelper.tableInvoiceContentData, {
        ...invoice.contentData!.toJson(),
        'invoiceId': invoiceId,
      });
    });
  }

  @override
  Future<void> delete(String invoiceId) async {
    final db = await _dbHelper.database;
    await db.transaction((txn) async {
      await txn.delete(
        DatabaseHelper.tableRequestsInfo,
        where: 'invoiceId = ?',
        whereArgs: [invoiceId],
      );
      await txn.delete(
        DatabaseHelper.tablePaymentsNetwork,
        where: 'invoiceId = ?',
        whereArgs: [invoiceId],
      );
      await txn.delete(
        DatabaseHelper.tableInvoiceContentData,
        where: 'invoiceId = ?',
        whereArgs: [invoiceId],
      );
      await txn.delete(
        DatabaseHelper.tableInvoices,
        where: 'id = ?',
        whereArgs: [invoiceId],
      );
    });
  }

  @override
  Future<void> update(Invoice invoice) async {
    final db = await _dbHelper.database;

    String? signerId;
    if (invoice.signer != null) {
      signerId = await _getTransactionActorId(db, invoice.signer!);
      if (signerId == null) {
        throw Exception('Transaction actor need to be defined first');
      }
    }

    await db.transaction((txn) async {
      final encodedPureInvoice = _encodePureInvoice(invoice);
      if (signerId != null) encodedPureInvoice['signerId'] = signerId;

      await txn.update(
        DatabaseHelper.tableInvoices,
        encodedPureInvoice,
        where: 'id = ?',
        whereArgs: [invoice.id],
      );

      // Update RequestInfo
      if (invoice.requestInfo != null) {
        await txn.update(
          DatabaseHelper.tableRequestsInfo,
          encodeRequestInfo(invoice.requestInfo!),
          where: 'invoiceId = ?',
          whereArgs: [invoice.id],
        );
      }

      // Update PaymentNetwork
      if (invoice.paymentNetwork != null) {
        await txn.update(
          DatabaseHelper.tablePaymentsNetwork,
          invoice.paymentNetwork!.toJson(),
          where: 'invoiceId = ?',
          whereArgs: [invoice.id],
        );
      }

      // Update ContentData
      if (invoice.contentData != null) {
        await txn.update(
          DatabaseHelper.tableInvoiceContentData,
          invoice.contentData!.toJson(),
          where: 'invoiceId = ?',
          whereArgs: [invoice.id],
        );
      }
    });
  }

  @override
  Future<List<Invoice>> list({String? id, String? projectId}) async {
    final db = await _dbHelper.database;
    final query = await conditionalQuery(
      db,
      DatabaseHelper.tableInvoices,
      {'id': id, 'projectId': projectId},
    );

    final invoices = <Invoice>[];
    for (var i = 0; i < query.length; i++) {
      final conditions = {'invoiceId': id};
      final signerId = query[i]['signerId']! as String;
      var invoice = Invoice.fromJson(query[i]);

      final requestInfo = await conditionalQuery(
        db,
        DatabaseHelper.tableRequestsInfo,
        conditions,
      );
      if (requestInfo.isNotEmpty) {
        invoice = invoice.copyWith(
          requestInfo: dencodeRequestInfo(
            Map.from(requestInfo.first),
          ),
        );
      }

      final paymentNetwork = await conditionalQuery(
        db,
        DatabaseHelper.tablePaymentsNetwork,
        conditions,
      );
      if (paymentNetwork.isNotEmpty) {
        invoice = invoice.copyWith(
          paymentNetwork: PaymentNetwork.fromJson(
            paymentNetwork.first,
          ),
        );
      }

      final contentData = await conditionalQuery(
        db,
        DatabaseHelper.tableInvoiceContentData,
        conditions,
      );
      if (contentData.isNotEmpty) {
        invoice = invoice.copyWith(
          contentData: ContentData.fromJson(
            contentData.first,
          ),
        );
      }

      final transactionActor = await conditionalQuery(
        db,
        DatabaseHelper.tableTransactionsActor,
        {'id': signerId},
      );
      if (transactionActor.isNotEmpty) {
        invoice = invoice.copyWith(
          signer: TransactionActor.fromJson(
            transactionActor.first,
          ),
        );
      }

      invoices.add(invoice);
    }

    return invoices;
  }

  Future<String?> _getTransactionActorId(
    Database db,
    TransactionActor actor,
  ) async {
    final signerQuery = await conditionalQuery(
      db,
      DatabaseHelper.tableTransactionsActor,
      actor.toJson(),
    );
    final signerId = signerQuery.first['id'] as String?;

    return signerId;
  }

  Map<String, dynamic> _encodePureInvoice(Invoice invoice) => invoice
      .copyWith(
        signer: null,
        requestInfo: null,
        contentData: null,
        paymentNetwork: null,
      )
      .toJson();

  @override
  Stream<Invoice> invoiceStream() => _invoiceStream.asBroadcastStream();

  @override
  Future<void> dispose() => _invoiceStream.close();

  @override
  Future<int> count({String? projectId}) async {
    final db = await _dbHelper.database;

    final parameters = buildWhereClause({'projectId': projectId});

    var whereClause = parameters['query'];
    whereClause = whereClause != null ? 'WHERE $whereClause' : null;

    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM ${DatabaseHelper.tableInvoices} $whereClause',
      parameters['whereArgs'] as List<Object?>?,
    );

    return Sqflite.firstIntValue(result) ?? 0;
  }
}
