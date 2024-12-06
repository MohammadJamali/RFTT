// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extensions_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtensionDataImpl _$$ExtensionDataImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionDataImpl(
      id: json['id'] as String?,
      action: json['action'] as String?,
      type: json['type'] as String?,
      parameters: json['parameters'] == null
          ? null
          : ExtensionDataParameter.fromJson(
              json['parameters'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$ExtensionDataImplToJson(_$ExtensionDataImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.action case final value?) 'action': value,
      if (instance.type case final value?) 'type': value,
      if (instance.parameters case final value?) 'parameters': value,
      if (instance.version case final value?) 'version': value,
    };
