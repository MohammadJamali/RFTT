import 'package:json_sorter/json_sorter.dart';

String normalizeMap(Map<dynamic, dynamic> data) =>
    jsonSortedEncode(data).toLowerCase();
