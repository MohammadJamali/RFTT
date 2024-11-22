// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      created: DateTime.parse(json['created'] as String),
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      finishedTasks: (json['finishedTasks'] as num?)?.toInt() ?? 0,
      totalTasks: (json['totalTasks'] as num?)?.toInt() ?? 0,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'created': instance.created.toIso8601String(),
      'duration': instance.duration,
      'finishedTasks': instance.finishedTasks,
      'totalTasks': instance.totalTasks,
      'deadline': instance.deadline?.toIso8601String(),
    };
