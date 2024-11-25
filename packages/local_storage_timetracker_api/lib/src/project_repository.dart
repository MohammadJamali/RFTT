import 'package:local_storage_timetracker_api/local_storage_timetracker_api.dart';
import 'package:timetracker_api/timetracker_api.dart';
import 'package:rxdart/subjects.dart';

class LocalStorageProjectApi extends ProjectsApi {
  LocalStorageProjectApi()
      : _dbHelper = DBHelper(),
        _projectStream = BehaviorSubject<List<Project>>.seeded(const []);

  final DBHelper _dbHelper;
  final BehaviorSubject<List<Project>> _projectStream;

  Future<List<Project>> fetchProjects() async {
    final db = await _dbHelper.initDB();
    final cursor = await db.query(DBHelper.tableProjects);
    final projects = cursor.map(Project.fromJson).toList();

    _projectStream.add(projects);

    return projects;
  }

  @override
  Future<void> addProject(Project project) async {
    final db = await _dbHelper.initDB();
    await db.insert(DBHelper.tableProjects, project.toJson());
  }

  @override
  Future<void> updateProject(Project project) async {
    final db = await _dbHelper.initDB();
    await db.update(
      DBHelper.tableProjects,
      project.toJson(),
      where: 'id = ?',
      whereArgs: [project.id],
    );
  }

  @override
  Future<void> deleteProject(String id) async {
    final db = await _dbHelper.initDB();
    await db.delete(DBHelper.tableProjects, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<void> close() => _projectStream.close();

  @override
  Stream<List<Project>> getProjects() => _projectStream.asBroadcastStream();
}
