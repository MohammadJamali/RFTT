import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:local_storage_timetracker_api/src/utils/database.dart';
import 'package:rxdart/subjects.dart';
import 'package:sqflite/sqflite.dart';
import 'package:timetracker_api/timetracker_api.dart';

class SqliteStorageTaskApi extends ITaskApi {
  final _dbHelper = DatabaseHelper();
  final _taskStream = BehaviorSubject<Task>();

  @override
  Future<void> add(Task task) async {
    final db = await _dbHelper.database;
    await db.insert(DatabaseHelper.tableTasks, task.toJson());

    _taskStream.add(task);
  }

  @override
  Future<Task?> delete(String id) async {
    final db = await _dbHelper.database;
    final task = await list(id: id);
    if (task.isNotEmpty) {
      await db.delete(
        DatabaseHelper.tableTasks,
        where: 'id = ?',
        whereArgs: [id],
      );
      return task.first;
    }

    return null;
  }

  @override
  Future<void> update(Task task) async {
    final db = await _dbHelper.database;
    await db.update(
      DatabaseHelper.tableTasks,
      task.toJson(),
      where: 'id = ?',
      whereArgs: [task.id],
    );

    _taskStream.add(task);
  }

  @override
  Future<List<Task>> list({String? id, String? projectId}) async {
    final db = await _dbHelper.database;

    final tasks = await conditionalQuery(db, DatabaseHelper.tableTasks, {
      'id': id,
      'projectId': projectId,
    });

    return tasks.map(Task.fromJson).toList();
  }

  @override
  Future<int> count({String? projectId, bool? completed}) async {
    final db = await _dbHelper.database;

    final parameters = buildWhereClause({
      'projectId': projectId,
      'completed': completed,
    });

    var whereClause = parameters['query'];
    whereClause = whereClause != null ? 'WHERE $whereClause' : null;

    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM task $whereClause',
      parameters['whereArgs'] as List<Object?>?,
    );

    return Sqflite.firstIntValue(result) ?? 0;
  }

  @override
  Future<int> sumOfTaskDurations({String? projectId, bool? completed}) async {
    final db = await _dbHelper.database;

    final parameters = buildWhereClause({
      'projectId': projectId,
      'completed': completed,
    });

    var whereClause = parameters['query'];
    whereClause = whereClause != null ? 'WHERE $whereClause' : null;

    final result = await db.rawQuery(
      'SELECT SUM(duration) as totalDuration FROM task $whereClause',
      parameters['whereArgs'] as List<Object?>?,
    );

    return result.first['totalDuration'] as int? ?? 0;
  }

  @override
  Stream<Task> taskStream() => _taskStream.asBroadcastStream();

  @override
  Future<void> close() => _taskStream.close();
}
