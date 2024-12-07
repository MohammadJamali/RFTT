import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:local_storage_timetracker_api/src/utils/database.dart';
import 'package:rxdart/subjects.dart';
import 'package:timetracker_api/timetracker_api.dart';

class LocalStorageInvoiceApi extends ILocalStorageInvoiceApi {
  final _dbHelper = DatabaseHelper();
  final _invoiceStream = BehaviorSubject<Invoice>();

  @override
  Future<void> add(Invoice invoice) async {
    final db = await _dbHelper.database;
    await db.transaction((txn) async {
      final invoiceId = invoice.id!;

      await txn.insert(DatabaseHelper.tableInvoices, invoice.toJson());
      await txn.insert(DatabaseHelper.tableRequestsInfo, {
        ...invoice.requestInfo!.toJson(),
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
      await txn.insert(DatabaseHelper.tableTransactionsActor, {
        ...invoice.signer!.toJson(),
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
        DatabaseHelper.tableTransactionsActor,
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
    await db.transaction((txn) async {
      // Update Invoice
      await txn.update(DatabaseHelper.tableInvoices, invoice.toJson(),
          where: 'id = ?', whereArgs: [invoice.id]);

      // Update RequestInfo
      if (invoice.requestInfo != null) {
        await txn.update(
          DatabaseHelper.tableRequestsInfo,
          invoice.requestInfo!.toJson(),
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

      // Update TransactionActor (signer)
      if (invoice.signer != null) {
        await txn.update(
          DatabaseHelper.tableTransactionsActor,
          invoice.signer!.toJson(),
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

    final invoices = query.map(Invoice.fromJson).toList();
    for (var i = 0; i < invoices.length; i++) {
      var invoice = invoices[i];
      final conditions = {'invoiceId': id};

      final requestInfo = await conditionalQuery(
          db, DatabaseHelper.tableRequestsInfo, conditions);
      if (requestInfo.isNotEmpty) {
        invoice = invoice.copyWith(
          requestInfo: RequestInfo.fromJson(
            requestInfo.first,
          ),
        );
      }

      final paymentNetwork = await conditionalQuery(
          db, DatabaseHelper.tablePaymentsNetwork, conditions);
      if (paymentNetwork.isNotEmpty) {
        invoice = invoice.copyWith(
          paymentNetwork: PaymentNetwork.fromJson(
            paymentNetwork.first,
          ),
        );
      }

      final contentData = await conditionalQuery(
          db, DatabaseHelper.tableInvoiceContentData, conditions);
      if (contentData.isNotEmpty) {
        invoice = invoice.copyWith(
          contentData: ContentData.fromJson(
            contentData.first,
          ),
        );
      }

      final transactionActor = await conditionalQuery(
          db, DatabaseHelper.tableTransactionsActor, conditions);
      if (transactionActor.isNotEmpty) {
        invoice = invoice.copyWith(
          signer: TransactionActor.fromJson(
            transactionActor.first,
          ),
        );
      }

      invoices[i] = invoice;
    }

    return invoices;
  }


  @override
  Stream<Invoice> invoiceStream() => _invoiceStream.asBroadcastStream();

  @override
  Future<void> dispose() => _invoiceStream.close();
}
