import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:rxdart/subjects.dart';
import 'package:timetracker_api/timetracker_api.dart';

class LocalStorageInvoiceApi extends InvoiceApi {
  LocalStorageInvoiceApi()
      : _dbHelper = DBHelper(),
        _invoiceStream = BehaviorSubject<List<Invoice>>.seeded(const []);

  final DBHelper _dbHelper;
  final BehaviorSubject<List<Invoice>> _invoiceStream;

  @override
  Future<List<Invoice>> fetchInvoiceList() async {
    final db = await _dbHelper.initDB();
    final cursor = await db.query(DBHelper.tableProjects);
    final projects = cursor.map(Invoice.fromJson).toList();

    _invoiceStream.add(projects);

    return projects;
  }

  Future<void> saveInvoice(InvoiceCreatedResponse invoice) async {
    final db = await _dbHelper.initDB();

    // Insert StorageMeta
    final storageMetaId = await db.insert(DBHelper.tableStorageMeta, {
      'ipfs': invoice.meta?.storageMeta?.ipfs.toString(),
      'local': invoice.meta?.storageMeta?.local.toString(),
      'ethereum': invoice.meta?.storageMeta?.ethereum?.toJson().toString(),
    });

    // Insert InvoiceMeta
    final metaId = await db.insert(DBHelper.tableInvoiceMeta, {
      'transactionStorageLocation': invoice.meta?.transactionStorageLocation,
      'storageType': invoice.meta?.storageType,
      'state': invoice.meta?.state,
      'timestamp': invoice.meta?.timestamp,
      'storageMetaId': storageMetaId,
    });

    // Insert Invoice
    await db.insert(DBHelper.tableInvoices, {
      'projectId': null, // Provide if available
      'events': invoice.events.toString(),
      'eventsCount': invoice.eventsCount,
      'metaId': metaId,
      'result': invoice.result.toString(),
    });
  }

  Future<InvoiceCreatedResponse?> loadInvoiceMeta({
    int? projectId,
    int? invoiceId,
  }) async {
    final db = await _dbHelper.initDB();
    final whereClause = invoiceId != null ? 'id = ?' : 'projectId = ?';
    final whereArgs = [invoiceId ?? projectId];

    final invoiceResult = await db.query(
      DBHelper.tableInvoices,
      where: whereClause,
      whereArgs: whereArgs,
    );

    if (invoiceResult.isEmpty) return null;

    final invoiceData = invoiceResult.first;

    // Fetch associated meta
    final metaResult = await db.query(
      DBHelper.tableInvoiceMeta,
      where: 'id = ?',
      whereArgs: [invoiceData['metaId']],
    );
    var invoiceMeta = InvoiceCreatedResponse.fromJson(metaResult.first);

    final storageMetaResult = await db.query(
      DBHelper.tableStorageMeta,
      where: 'id = ?',
      whereArgs: [metaResult.first['storageMetaId']],
    );

    if (storageMetaResult.isNotEmpty) {
      invoiceMeta = invoiceMeta.copyWith(
        meta: invoiceMeta.meta?.copyWith(
          storageMeta: InvoiceCreatedResponseStorageMeta.fromJson(
              storageMetaResult.first),
        ),
      );
    }

    return invoiceMeta;
  }

  @override
  Future<void> addInvoice(Invoice invoice) async {
    final db = await _dbHelper.initDB();
    await db.insert(DBHelper.tableInvoices, invoice.toJson());
  }

  @override
  Future<void> updateInvoice(Invoice invoice) async {
    final db = await _dbHelper.initDB();
    await db.update(
      DBHelper.tableInvoices,
      invoice.toJson(),
      where: 'id = ?',
      whereArgs: [invoice.id],
    );
  }

  @override
  Future<void> deleteInvoice(String id) async {
    final db = await _dbHelper.initDB();
    await db.delete(DBHelper.tableInvoices, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<void> close() => _invoiceStream.close();

  @override
  Stream<List<Invoice>> getInvoiceList() => _invoiceStream.asBroadcastStream();
}
