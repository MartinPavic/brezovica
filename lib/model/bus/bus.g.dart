// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bus _$$_BusFromJson(Map<String, dynamic> json) => _$_Bus(
      number: json['number'] as int,
      type: BusType.fromJson(json['type'] as Map<String, dynamic>),
      url: Uri.parse(json['url'] as String),
      pdfFilePath: json['pdfFilePath'] as String?,
    );

Map<String, dynamic> _$$_BusToJson(_$_Bus instance) => <String, dynamic>{
      'number': instance.number,
      'type': instance.type,
      'url': instance.url.toString(),
      'pdfFilePath': instance.pdfFilePath,
    };

_$BrezovicaBusType _$$BrezovicaBusTypeFromJson(Map<String, dynamic> json) =>
    _$BrezovicaBusType(
      description: json['description'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BrezovicaBusTypeToJson(_$BrezovicaBusType instance) =>
    <String, dynamic>{
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$ObrezBusType _$$ObrezBusTypeFromJson(Map<String, dynamic> json) =>
    _$ObrezBusType(
      description: json['description'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ObrezBusTypeToJson(_$ObrezBusType instance) =>
    <String, dynamic>{
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$BotinecBusType _$$BotinecBusTypeFromJson(Map<String, dynamic> json) =>
    _$BotinecBusType(
      description: json['description'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BotinecBusTypeToJson(_$BotinecBusType instance) =>
    <String, dynamic>{
      'description': instance.description,
      'runtimeType': instance.$type,
    };
