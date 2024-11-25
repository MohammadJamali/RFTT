import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:rxdart/subjects.dart';
import 'package:timetracker_api/timetracker_api.dart';

class LocalStorageInvoiceApi extends InvoiceApi {
  LocalStorageInvoiceApi()
      : _dbHelper = DBHelper(),
        _invoiceStream = BehaviorSubject<List<Invoice>>.seeded(const []);

  final DBHelper _dbHelper;
  final BehaviorSubject<List<Invoice>> _invoiceStream;

  Future<List<Invoice>> fetchInvoiceList() async {
    final db = await _dbHelper.initDB();
    final cursor = await db.query(DBHelper.tableProjects);
    final projects = cursor.map(Invoice.fromJson).toList();

    _invoiceStream.add(projects);

    return projects;
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
