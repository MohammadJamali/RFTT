import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static const String dbName = 'timetracker.db';
  static const String tableAccounts = 'accounts';
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

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Account table
        await db.execute('''
          CREATE TABLE $tableAccounts (
            id TEXT PRIMARY KEY,
            title TEXT,
            email TEXT,
            name TEXT,
            profilePicture TEXT,
            totalInvoices INTEGER DEFAULT 0,
            paiedInvoices INTEGER DEFAULT 0
          )
        ''');

        // Project table
        await db.execute('''
          CREATE TABLE $tableProjects (
            id TEXT PRIMARY KEY,
            accountId TEXT,
            title TEXT,
            created TEXT,
            description TEXT,
            duration INTEGER DEFAULT 0,
            finishedTasks INTEGER DEFAULT 0,
            totalTasks INTEGER DEFAULT 0,
            deadline TEXT,
            FOREIGN KEY (accountId) REFERENCES $tableProjects (id) ON DELETE SET NULL
          )
        ''');

        // Task table
        await db.execute('''
          CREATE TABLE $tableTasks (
            id TEXT PRIMARY KEY,
            projectId TEXT,
            title TEXT,
            created TEXT,
            duration INTEGER DEFAULT 0,
            description TEXT,
            deadline TEXT,
            tags TEXT,
            FOREIGN KEY (projectId) REFERENCES $tableProjects (id) ON DELETE CASCADE
          )
        ''');

        // Invoice table
        await db.execute('''
          CREATE TABLE $tableInvoices (
            id TEXT PRIMARY KEY,
            projectId TEXT,
            signerId TEXT,
            storageLocation TEXT,
            channelId TEXT,
            signature TEXT,
            invoiceId TEXT,
            state TEXT DEFAULT 'created',
            FOREIGN KEY (projectId) REFERENCES $tableProjects (id) ON DELETE SET NULL,
            FOREIGN KEY (signerId) REFERENCES $tableTransactionsActor (id) ON DELETE SET NULL
          )
        ''');

        // Supporting tables
        await db.execute('''
          CREATE TABLE $tableRequestsInfo (
            id TEXT PRIMARY KEY,
            invoiceId TEXT,
            currency TEXT,
            expectedAmount TEXT,
            payee TEXT,
            timestamp INTEGER,
            FOREIGN KEY (invoiceId) REFERENCES $tableInvoices (id) ON DELETE CASCADE
          )
        ''');

        await db.execute('''
          CREATE TABLE $tablePaymentsNetwork (
            id TEXT PRIMARY KEY,
            invoiceId TEXT,
            paymentNetworkName TEXT,
            paymentAddress TEXT,
            feeAddress TEXT,
            feeAmount TEXT,
            FOREIGN KEY (invoiceId) REFERENCES $tableInvoices (id) ON DELETE CASCADE
          )
        ''');

        await db.execute('''
          CREATE TABLE $tableInvoiceContentData (
            id TEXT PRIMARY KEY,
            invoiceId TEXT,
            builderId TEXT,
            createdWith TEXT,
            dueDate TEXT,
            reason TEXT,
            FOREIGN KEY (invoiceId) REFERENCES $tableInvoices (id) ON DELETE CASCADE
          )
        ''');

        await db.execute('''
          CREATE TABLE $tableTransactionsActor (
            id TEXT PRIMARY KEY,
            accountId TEXT,
            type TEXT,
            value TEXT,
            FOREIGN KEY (accountId) REFERENCES $tableAccounts (id) ON DELETE SET NULL
          )
        ''');
      },
    );
  }
}
