// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contentful_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sys _$$_SysFromJson(Map<String, dynamic> json) => _$_Sys(
      type: json['type'] as String,
      linkType: json['linkType'] as String?,
      id: json['id'] as String?,
      space: json['space'] as String?,
      environment: json['environment'] as String?,
      contentType: json['contentType'] as String?,
      revision: json['revision'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$$_SysToJson(_$_Sys instance) => <String, dynamic>{
      'type': instance.type,
      'linkType': instance.linkType,
      'id': instance.id,
      'space': instance.space,
      'environment': instance.environment,
      'contentType': instance.contentType,
      'revision': instance.revision,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'locale': instance.locale,
    };

_$_Entry<T> _$$_EntryFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_Entry<T>(
      fields: fromJsonT(json['fields']),
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$$_EntryToJson<T>(
  _$_Entry<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'fields': toJsonT(instance.fields),
      'sys': instance.sys,
      'metadata': instance.metadata,
    };

_$_Collection<T> _$$_CollectionFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_Collection<T>(
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      includes: json['includes'] == null
          ? null
          : Includes.fromJson(json['includes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CollectionToJson<T>(
  _$_Collection<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'sys': instance.sys,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
      'items': instance.items.map(toJsonT).toList(),
      'includes': instance.includes,
    };

_$_AssetFields _$$_AssetFieldsFromJson(Map<String, dynamic> json) =>
    _$_AssetFields(
      title: json['title'] as String,
      file: FileFields.fromJson(json['file'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_AssetFieldsToJson(_$_AssetFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'file': instance.file,
      'description': instance.description,
    };

_$_FileFields _$$_FileFieldsFromJson(Map<String, dynamic> json) =>
    _$_FileFields(
      contentType: json['contentType'] as String,
      fileName: json['fileName'] as String,
      url: json['url'] as String,
      details: json['details'] as Object,
    );

Map<String, dynamic> _$$_FileFieldsToJson(_$_FileFields instance) =>
    <String, dynamic>{
      'contentType': instance.contentType,
      'fileName': instance.fileName,
      'url': instance.url,
      'details': instance.details,
    };

_$_Asset _$$_AssetFromJson(Map<String, dynamic> json) => _$_Asset(
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      fields: AssetFields.fromJson(json['fields'] as Map<String, dynamic>),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$$_AssetToJson(_$_Asset instance) => <String, dynamic>{
      'sys': instance.sys,
      'fields': instance.fields,
      'metadata': instance.metadata,
    };

_$_Includes _$$_IncludesFromJson(Map<String, dynamic> json) => _$_Includes(
      asset: (json['Asset'] as List<dynamic>?)
          ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
      entry: (json['Entry'] as List<dynamic>?)
          ?.map((e) => Entry<dynamic>.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IncludesToJson(_$_Includes instance) =>
    <String, dynamic>{
      'Asset': instance.asset,
      'Entry': instance.entry,
    };
