// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contentful_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entry<T> _$EntryFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Entry<T>(
      fromJsonT(json['fields']),
      Sys.fromJson(json['sys'] as Map<String, dynamic>),
      json['metadata'],
    );

Map<String, dynamic> _$EntryToJson<T>(
  Entry<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'fields': toJsonT(instance.fields),
      'sys': instance.sys.toJson(),
      'metadata': instance.metadata,
    };

Collection<T> _$CollectionFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Collection<T>(
      Sys.fromJson(json['sys'] as Map<String, dynamic>),
      json['total'] as int,
      json['skip'] as int,
      json['limit'] as int,
      (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      json['includes'] == null
          ? null
          : Includes.fromJson(json['includes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CollectionToJson<T>(
  Collection<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'sys': instance.sys.toJson(),
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
      'items': instance.items.map(toJsonT).toList(),
      'includes': instance.includes?.toJson(),
    };

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
          ?.map((e) => Entry<dynamic>.fromJson(
              e as Map<String, dynamic>, (value) => value))
          .toList(),
    );

Map<String, dynamic> _$$_IncludesToJson(_$_Includes instance) =>
    <String, dynamic>{
      'Asset': instance.asset,
      'Entry': instance.entry
          ?.map((e) => e.toJson(
                (value) => value,
              ))
          .toList(),
    };

_$_SearchParameters _$$_SearchParametersFromJson(Map<String, dynamic> json) =>
    _$_SearchParameters(
      contentType: json['content_type'] as String?,
      select: json['select'] as String?,
      limit: json['limit'] as int?,
      skip: json['skip'] as int?,
      mimeTypeGroup: json['mimetype_group'] as String?,
    );

Map<String, dynamic> _$$_SearchParametersToJson(_$_SearchParameters instance) =>
    <String, dynamic>{
      'content_type': instance.contentType,
      'select': instance.select,
      'limit': instance.limit,
      'skip': instance.skip,
      'mimetype_group': instance.mimeTypeGroup,
    };
