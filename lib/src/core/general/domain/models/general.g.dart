// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralImpl _$$GeneralImplFromJson(Map<String, dynamic> json) =>
    _$GeneralImpl(
      partographId: json['partographId'] as String,
      name: json['name'] as String,
      recordNumber: json['recordNumber'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$GeneralImplToJson(_$GeneralImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'name': instance.name,
      'recordNumber': instance.recordNumber,
      'date': instance.date.toIso8601String(),
    };
