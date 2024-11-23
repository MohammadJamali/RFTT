import 'package:sqflite/sqflite.dart';

class DBHelper {
  static const String dbName = "timetracker.db";
  static const String invoicesTasks = "invoices";
  static const String projectsTasks = "projects";
  static const String tableTasks = "tasks";

  Future<Database> initDB() async {
    return openDatabase(
      dbName,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE $invoicesTasks (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            projectId INTEGER,
            timestamp TEXT,
            currencyType TEXT,
            currencyValue TEXT,
            currencyNetwork TEXT,
            payeeValue TEXT,
            payeeType TEXT,
            payerValue TEXT,
            payerType TEXT,
            contentDataReason TEXT,
            contentDataDueDate TEXT,
            paymentNetworkId TEXT,
            paymentNetworkName TEXT,
            paymentNetworkAddress TEXT,
            paymentNetworkFeeAmount TEXT,
            feeRecipient TEXT
          );

          CREATE TABLE $projectsTasks (
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
