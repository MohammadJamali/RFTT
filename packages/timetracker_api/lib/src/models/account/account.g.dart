// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: json['id'] as String,
      email: json['email'] as String?,
      name: json['name'] as String?,
      profilePicture: json['profilePicture'] as String?,
      invoices: (json['invoices'] as List<dynamic>?)
          ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactionActors: (json['transactionActors'] as List<dynamic>?)
          ?.map((e) => TransactionActor.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalInvoices: (json['totalInvoices'] as num?)?.toInt(),
      paiedInvoices: (json['paiedInvoices'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.email case final value?) 'email': value,
      if (instance.name case final value?) 'name': value,
      if (instance.profilePicture case final value?) 'profilePicture': value,
      if (instance.invoices case final value?) 'invoices': value,
      if (instance.transactionActors case final value?)
        'transactionActors': value,
      if (instance.totalInvoices case final value?) 'totalInvoices': value,
      if (instance.paiedInvoices case final value?) 'paiedInvoices': value,
    };
