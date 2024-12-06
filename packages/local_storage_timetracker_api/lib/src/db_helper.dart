import 'package:sqflite/sqflite.dart';

class DBHelper {
  static const String dbName = 'timetracker.db';
  static const String tableInvoices = 'invoices';
  static const String tableProjects = 'projects';
  static const String tableTasks = 'tasks';

  static const String tableInvoiceMeta = 'invoice_meta';
  static const String tableStorageMeta = 'storage_meta';

  Future<Database> initDB() async {
    return openDatabase(
      dbName,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE $tableInvoices (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            projectId INTEGER,
            timestamp INTEGER,
            currencyNetwork TEXT,
            currencyType TEXT,
            currencyValue TEXT,
            currencySymbol TEXT,
            expectedAmount TEXT,
            contentDataReason: TEXT,
            contentDataDueDate: TEXT,
            payeeType: TEXT,
            payeeValue: TEXT,
            paymentNetworkName: TEXT,
            paymentAddress: TEXT,
            paymentFeeAddress: TEXT,
            paymentFeeAmount: TEXT,
            metaId INTEGER,
            FOREIGN KEY(metaId) REFERENCES $tableInvoiceMeta(id)
          );

          CREATE TABLE $tableInvoiceMeta (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            transactionStorageLocation TEXT,
            storageType TEXT,
            state TEXT,
            timestamp INTEGER,
            storageMetaId INTEGER,
            FOREIGN KEY(storageMetaId) REFERENCES $tableStorageMeta(id)
          );

          CREATE TABLE $tableStorageMeta (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            ipfs TEXT,
            local TEXT,
            ethereum TEXT
          );

          CREATE TABLE $tableProjects (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            description TEXT,
            created TEXT,
            duration INTEGER,
            finishedTasks INTEGER,
            totalTasks INTEGER
          );

          CREATE TABLE $tableTasks (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            projectId INTEGER,
            title TEXT,
            description TEXT,
            deadline TEXT,
            tags TEXT,
            duration INTEGER
          );
        ''');
      },
    );
  }
}
