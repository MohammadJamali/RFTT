// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentDataImpl _$$ContentDataImplFromJson(Map<String, dynamic> json) =>
    _$ContentDataImpl(
      reason: json['reason'] as String?,
      dueDate: json['dueDate'] as String?,
      createdWith: json['createdWith'] as String?,
      builderId: json['builderId'] as String?,
    );

Map<String, dynamic> _$$ContentDataImplToJson(_$ContentDataImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'dueDate': instance.dueDate,
      'createdWith': instance.createdWith,
      'builderId': instance.builderId,
    };
