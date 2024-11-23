import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:timetracker_api/timetracker_api.dart';

class LocalStorageTaskApi {
  final DBHelper dbHelper = DBHelper();

  Future<List<Task>> fetchTasks() async {
    final db = await dbHelper.initDB();
    final List<Map<String, dynamic>> maps = await db.query(DBHelper.tableTasks);
    return List.generate(maps.length, (i) => Task.fromJson(maps[i]));
  }

  Future<void> addTask(Task task) async {
    final db = await dbHelper.initDB();
    await db.insert(DBHelper.tableTasks, task.toJson());
  }

  Future<void> updateTask(Task task) async {
    final db = await dbHelper.initDB();
    await db.update(
      DBHelper.tableTasks,
      task.toJson(),
      where: 'id = ?',
      whereArgs: [task.id],
    );
  }

  Future<void> deleteTask(int id) async {
    final db = await dbHelper.initDB();
    await db.delete(DBHelper.tableTasks, where: 'id = ?', whereArgs: [id]);
  }
}
