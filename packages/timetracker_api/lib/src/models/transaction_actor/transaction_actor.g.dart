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
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      businessName: json['businessName'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      taxRegistration: json['taxRegistration'] as String?,
      companyRegistration: json['companyRegistration'] as String?,
      miscellaneous: json['miscellaneous'] as String?,
      profilePic: json['profilePic'] as String?,
    );

Map<String, dynamic> _$$TransactionActorImplToJson(
        _$TransactionActorImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      if (instance.email case final value?) 'email': value,
      if (instance.firstName case final value?) 'firstName': value,
      if (instance.lastName case final value?) 'lastName': value,
      if (instance.businessName case final value?) 'businessName': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.address case final value?) 'address': value,
      if (instance.taxRegistration case final value?) 'taxRegistration': value,
      if (instance.companyRegistration case final value?)
        'companyRegistration': value,
      if (instance.miscellaneous case final value?) 'miscellaneous': value,
      if (instance.profilePic case final value?) 'profilePic': value,
    };
