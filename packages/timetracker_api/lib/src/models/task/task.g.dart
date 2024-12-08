// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      title: json['title'] as String,
      created: DateTime.parse(json['created'] as String),
      invoiceId: json['invoiceId'] as String?,
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      description: json['description'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'title': instance.title,
      'created': instance.created.toIso8601String(),
      if (instance.invoiceId case final value?) 'invoiceId': value,
      'duration': instance.duration,
      if (instance.description case final value?) 'description': value,
      if (instance.deadline?.toIso8601String() case final value?)
        'deadline': value,
      'tags': instance.tags,
    };
