import 'package:sqflite/sqflite.dart';

Map<Object, Object?> buildWhereClause(Map<String, dynamic> conditions) {
  final whereClauses = <String>[];
  final whereArgs = <dynamic>[];

  for (final condition in conditions.keys) {
    final value = conditions[condition];
    if (value == null) continue;

    whereClauses.add('$condition = ?');
    whereArgs.add(conditions[condition]);
  }

  if (whereClauses.isEmpty) return {'query': null, 'whereArgs': null};

  final query = whereClauses.join(' AND ');

  return {'query': query, 'whereArgs': whereArgs};
}

Future<List<Map<String, Object?>>> conditionalQuery(
  Database db,
  String table,
  Map<String, dynamic> conditions,
) async {
  final parameters = buildWhereClause(conditions);
  return await db.query(
    table,
    where: parameters['query'] as String?,
    whereArgs: parameters['whereArgs'] as List<Object?>?,
  );
}
