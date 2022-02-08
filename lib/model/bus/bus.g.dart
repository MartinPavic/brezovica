// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bus _$$_BusFromJson(Map<String, dynamic> json) => _$_Bus(
      id: json['id'] as String,
      number: json['number'] as int,
      name: json['name'] as String,
      pdfFilePath: json['pdfFilePath'] as String?,
    );

Map<String, dynamic> _$$_BusToJson(_$_Bus instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'pdfFilePath': instance.pdfFilePath,
    };
