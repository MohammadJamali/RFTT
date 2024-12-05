// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extensions_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtensionsDataImpl _$$ExtensionsDataImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionsDataImpl(
      id: json['id'] as String?,
      action: json['action'] as String?,
      type: json['type'] as String?,
      parameters: json['parameters'] == null
          ? null
          : ExtensionDataParameter.fromJson(
              json['parameters'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$ExtensionsDataImplToJson(
        _$ExtensionsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'type': instance.type,
      'parameters': instance.parameters,
      'version': instance.version,
    };
