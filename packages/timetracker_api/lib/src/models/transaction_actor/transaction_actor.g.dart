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
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'businessName': instance.businessName,
      'phone': instance.phone,
      'address': instance.address,
      'taxRegistration': instance.taxRegistration,
      'companyRegistration': instance.companyRegistration,
      'miscellaneous': instance.miscellaneous,
      'profilePic': instance.profilePic,
    };
