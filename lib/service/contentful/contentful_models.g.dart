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
      Option<Object>.fromJson(json['metadata']),
    );

Map<String, dynamic> _$EntryToJson<T>(
  Entry<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'fields': toJsonT(instance.fields),
      'sys': instance.sys.toJson(),
      'metadata': instance.metadata.toJson(
        (value) => value,
      ),
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
      Option<Includes>.fromJson(json['includes']),
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
      'includes': instance.includes.toJson(
        (value) => value.toJson(),
      ),
    };

_$_Sys _$$_SysFromJson(Map<String, dynamic> json) => _$_Sys(
      type: json['type'] as String,
      linkType: json['linkType'] == null
          ? const None()
          : Option<String>.fromJson(json['linkType']),
      id: json['id'] == null
          ? const None()
          : Option<String>.fromJson(json['id']),
      space: json['space'] == null
          ? const None()
          : Option<Object>.fromJson(json['space']),
      environment: json['environment'] == null
          ? const None()
          : Option<Object>.fromJson(json['environment']),
      contentType: json['contentType'] == null
          ? const None()
          : Option<Object>.fromJson(json['contentType']),
      revision: json['revision'] == null
          ? const None()
          : Option<int>.fromJson(json['revision']),
      createdAt: json['createdAt'] == null
          ? const None()
          : Option<DateTime>.fromJson(json['createdAt']),
      updatedAt: json['updatedAt'] == null
          ? const None()
          : Option<DateTime>.fromJson(json['updatedAt']),
      locale: json['locale'] == null
          ? const None()
          : Option<String>.fromJson(json['locale']),
    );

Map<String, dynamic> _$$_SysToJson(_$_Sys instance) => <String, dynamic>{
      'type': instance.type,
      'linkType': instance.linkType.toJson(
        (value) => value,
      ),
      'id': instance.id.toJson(
        (value) => value,
      ),
      'space': instance.space.toJson(
        (value) => value,
      ),
      'environment': instance.environment.toJson(
        (value) => value,
      ),
      'contentType': instance.contentType.toJson(
        (value) => value,
      ),
      'revision': instance.revision.toJson(
        (value) => value,
      ),
      'createdAt': instance.createdAt.toJson(
        (value) => value.toIso8601String(),
      ),
      'updatedAt': instance.updatedAt.toJson(
        (value) => value.toIso8601String(),
      ),
      'locale': instance.locale.toJson(
        (value) => value,
      ),
    };

_$_AssetFields _$$_AssetFieldsFromJson(Map<String, dynamic> json) =>
    _$_AssetFields(
      title: json['title'] as String,
      file: FileFields.fromJson(json['file'] as Map<String, dynamic>),
      description: json['description'] == null
          ? const None()
          : Option<String>.fromJson(json['description']),
    );

Map<String, dynamic> _$$_AssetFieldsToJson(_$_AssetFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'file': instance.file,
      'description': instance.description.toJson(
        (value) => value,
      ),
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
      metadata: json['metadata'] == null
          ? const None()
          : Option<Object>.fromJson(json['metadata']),
    );

Map<String, dynamic> _$$_AssetToJson(_$_Asset instance) => <String, dynamic>{
      'sys': instance.sys,
      'fields': instance.fields,
      'metadata': instance.metadata.toJson(
        (value) => value,
      ),
    };

_$_Includes _$$_IncludesFromJson(Map<String, dynamic> json) => _$_Includes(
      assets: json['Asset'] == null
          ? const None()
          : Option<List<Asset>>.fromJson(json['Asset']),
      entries: json['Entry'] == null
          ? const None()
          : Option<List<Entry<dynamic>>>.fromJson(json['Entry']),
    );

Map<String, dynamic> _$$_IncludesToJson(_$_Includes instance) =>
    <String, dynamic>{
      'Asset': instance.assets.toJson(
        (value) => value,
      ),
      'Entry': instance.entries.toJson(
        (value) => value
            .map((e) => e.toJson(
                  (value) => value,
                ))
            .toList(),
      ),
    };

_$_SearchParameters _$$_SearchParametersFromJson(Map<String, dynamic> json) =>
    _$_SearchParameters(
      contentType: json['content_type'] == null
          ? const None()
          : Option<String>.fromJson(json['content_type']),
      select: json['select'] == null
          ? const None()
          : Option<String>.fromJson(json['select']),
      limit: json['limit'] == null
          ? const None()
          : Option<int>.fromJson(json['limit']),
      skip: json['skip'] == null
          ? const None()
          : Option<int>.fromJson(json['skip']),
      mimeTypeGroup: json['mimetype_group'] == null
          ? const None()
          : Option<String>.fromJson(json['mimetype_group']),
    );

Map<String, dynamic> _$$_SearchParametersToJson(_$_SearchParameters instance) =>
    <String, dynamic>{
      'content_type': instance.contentType.toJson(
        (value) => value,
      ),
      'select': instance.select.toJson(
        (value) => value,
      ),
      'limit': instance.limit.toJson(
        (value) => value,
      ),
      'skip': instance.skip.toJson(
        (value) => value,
      ),
      'mimetype_group': instance.mimeTypeGroup.toJson(
        (value) => value,
      ),
    };

_$_EntryFieldImage _$$_EntryFieldImageFromJson(Map<String, dynamic> json) =>
    _$_EntryFieldImage(
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      asset: json['asset'] == null
          ? const None()
          : Option<Asset>.fromJson(json['asset']),
    );

Map<String, dynamic> _$$_EntryFieldImageToJson(_$_EntryFieldImage instance) =>
    <String, dynamic>{
      'sys': instance.sys,
      'asset': instance.asset.toJson(
        (value) => value,
      ),
    };
