import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:rxdart/subjects.dart';
import 'package:timetracker_api/timetracker_api.dart';

class LocalStorageTaskApi extends TaskApi {
  LocalStorageTaskApi()
      : _dbHelper = DBHelper(),
        _taskStream = BehaviorSubject<List<Task>>.seeded(const []);

  final DBHelper _dbHelper;
  final BehaviorSubject<List<Task>> _taskStream;

  Future<List<Task>> fetchTasks() async {
    final db = await _dbHelper.initDB();
    final cursor = await db.query(DBHelper.tableProjects);
    final projects = cursor.map(Task.fromJson).toList();

    _taskStream.add(projects);

    return projects;
  }

  @override
  Future<void> addTask(Task task) async {
    final db = await _dbHelper.initDB();
    await db.insert(DBHelper.tableTasks, task.toJson());
  }

  @override
  Future<void> updateTask(Task task) async {
    final db = await _dbHelper.initDB();
    await db.update(
      DBHelper.tableTasks,
      task.toJson(),
      where: 'id = ?',
      whereArgs: [task.id],
    );
  }

  @override
  Future<void> deleteTask(String id) async {
    final db = await _dbHelper.initDB();
    await db.delete(DBHelper.tableTasks, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<void> close() => _taskStream.close();

  @override
  Stream<List<Task>> getTasks() => _taskStream.asBroadcastStream();
}
