// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentDataImpl _$$ContentDataImplFromJson(Map<String, dynamic> json) =>
    _$ContentDataImpl(
      builderId: json['builderId'] as String?,
      createdWith: json['createdWith'] as String?,
      dueDate: json['dueDate'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$ContentDataImplToJson(_$ContentDataImpl instance) =>
    <String, dynamic>{
      if (instance.builderId case final value?) 'builderId': value,
      if (instance.createdWith case final value?) 'createdWith': value,
      if (instance.dueDate case final value?) 'dueDate': value,
      if (instance.reason case final value?) 'reason': value,
    };
