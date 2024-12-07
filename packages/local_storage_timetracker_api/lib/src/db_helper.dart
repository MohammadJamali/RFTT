import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static const String dbName = 'timetracker.db';
  static const String tableProjects = 'projects';
  static const String tableTasks = 'tasks';

  static const String tableInvoices = 'invoices';
  static const String tableTransactionsActor = 'transaction_actor';
  static const String tableRequestsInfo = 'requests_info';
  static const String tablePaymentsNetwork = 'payment_network';
  static const String tableInvoiceContentData = 'invoice_contents_data';

  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'app_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Project table
        await db.execute('''
          CREATE TABLE $tableProjects (
            id TEXT PRIMARY KEY,
            title TEXT NOT NULL,
            created TEXT NOT NULL,
            description TEXT,
            duration INTEGER DEFAULT 0,
            finishedTasks INTEGER DEFAULT 0,
            totalTasks INTEGER DEFAULT 0,
            deadline TEXT
          )
        ''');

        // Task table
        await db.execute('''
          CREATE TABLE $tableTasks (
            id TEXT PRIMARY KEY,
            projectId TEXT NOT NULL,
            title TEXT NOT NULL,
            created TEXT NOT NULL,
            duration INTEGER DEFAULT 0,
            description TEXT,
            deadline TEXT,
            tags TEXT,
            FOREIGN KEY (projectId) REFERENCES project (id) ON DELETE CASCADE
          )
        ''');

        // Invoice table
        await db.execute('''
          CREATE TABLE $tableInvoices (
            id TEXT PRIMARY KEY,
            projectId TEXT,
            storageLocation TEXT,
            channelId TEXT,
            signature TEXT,
            state TEXT DEFAULT 'created',
            FOREIGN KEY (projectId) REFERENCES project (id) ON DELETE CASCADE
          )
        ''');

        // Supporting tables
        await db.execute('''
          CREATE TABLE $tableRequestsInfo (
            id TEXT PRIMARY KEY,
            invoiceId TEXT NOT NULL,
            currency TEXT NOT NULL,
            expectedAmount TEXT NOT NULL,
            payee TEXT NOT NULL,
            timestamp INTEGER,
            FOREIGN KEY (invoiceId) REFERENCES invoice (id) ON DELETE CASCADE
          )
        ''');

        await db.execute('''
          CREATE TABLE $tablePaymentsNetwork (
            id TEXT PRIMARY KEY,
            invoiceId TEXT NOT NULL,
            paymentNetworkName TEXT NOT NULL,
            paymentAddress TEXT NOT NULL,
            feeAddress TEXT NOT NULL,
            feeAmount TEXT NOT NULL,
            FOREIGN KEY (invoiceId) REFERENCES invoice (id) ON DELETE CASCADE
          )
        ''');

        await db.execute('''
          CREATE TABLE $tableInvoiceContentData (
            id TEXT PRIMARY KEY,
            invoiceId TEXT NOT NULL,
            builderId TEXT,
            createdWith TEXT,
            dueDate TEXT,
            reason TEXT,
            FOREIGN KEY (invoiceId) REFERENCES invoice (id) ON DELETE CASCADE
          )
        ''');

        await db.execute('''
          CREATE TABLE $tableTransactionsActor (
            type TEXT PRIMARY KEY,
            value TEXT PRIMARY KEY,
            invoiceId TEXT NOT NULL,
            FOREIGN KEY (invoiceId) REFERENCES invoice (id) ON DELETE CASCADE
          )
        ''');
      },
    );
  }
}
