// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionActorImpl _$$TransactionActorImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionActorImpl(
      type: json['type'] as String,
      value: json['value'] as String,
      name: json['name'] as String?,
      taxId: json['taxId'] as String?,
      profilePic: json['profilePic'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$TransactionActorImplToJson(
        _$TransactionActorImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'name': instance.name,
      'taxId': instance.taxId,
      'profilePic': instance.profilePic,
      'email': instance.email,
    };
