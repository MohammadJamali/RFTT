import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:local_storage_timetracker_api/src/utils/database.dart';
import 'package:rxdart/subjects.dart';
import 'package:timetracker_api/timetracker_api.dart';

class SqliteStorageProjectApi extends IProjectApi {
  final _dbHelper = DatabaseHelper();
  final _projectStream = BehaviorSubject<Project>();

  @override
  Future<void> add(Project project) async {
    final db = await _dbHelper.database;
    await db.insert(DatabaseHelper.tableProjects, project.toJson());

    _projectStream.add(project);
  }

  @override
  Future<Project?> delete(String id) async {
    final db = await _dbHelper.database;
    final project = await list(id: id);
    if (project.isNotEmpty) {
      await db.delete(
        DatabaseHelper.tableProjects,
        where: 'id = ?',
        whereArgs: [id],
      );
      return project.first;
    }

    return null;
  }

  @override
  Future<void> update(Project project) async {
    final db = await _dbHelper.database;
    await db.update(
      DatabaseHelper.tableProjects,
      project.toJson(),
      where: 'id = ?',
      whereArgs: [project.id],
    );
    _projectStream.add(project);
  }

  @override
  Future<List<Project>> list({String? id}) async {
    final db = await _dbHelper.database;

    final projects = await conditionalQuery(db, DatabaseHelper.tableProjects, {
      'id': id,
    });

    return projects.map(Project.fromJson).toList();
  }

  @override
  Stream<Project> projectStream() => _projectStream.asBroadcastStream();

  @override
  Future<void> close() => _projectStream.close();
}
