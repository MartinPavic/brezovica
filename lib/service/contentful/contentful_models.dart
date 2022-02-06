import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contentful_models.freezed.dart';
part 'contentful_models.g.dart';

@freezed
class Sys with _$Sys {
  const factory Sys({
    required String type,
    String? linkType,
    String? id,
    String? space,
    String? environment,
    String? contentType,
    int? revision,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? locale
  }) = _Sys;
  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@freezed
class Entry<T> with _$Entry<T> {
  @JsonSerializable(genericArgumentFactories: true)
  const factory Entry({
    required T fields,
    required Sys sys,
    Object? metadata,
  }) = _Entry;
  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}

@freezed
class Collection<T> with _$Collection<T> {
  @JsonSerializable(genericArgumentFactories: true)
  const factory Collection({
    required Sys sys,
    required int total,
    required int skip,
    required int limit,
    required List<T> items,
    Includes? includes
  }) = _Collection;
  factory Collection.fromJson(Map<String, dynamic> json) => _$CollectionFromJson(json);
}

@freezed
class AssetFields with _$AssetFields {
  const factory AssetFields({
    required String title,
    required FileFields file,
    String? description
  }) = _AssetFields;
  factory AssetFields.fromJson(Map<String, dynamic> json) => _$AssetFieldsFromJson(json);
}

@freezed
class FileFields with _$FileFields {
  const factory FileFields({
    required String contentType,
    required String fileName,
    required String url,
    required Object details
  }) = _FileFields;
  factory FileFields.fromJson(Map<String, dynamic> json) => _$FileFieldsFromJson(json);
}

@freezed
class Asset with _$Asset {
  const factory Asset({
    required Sys sys,
    required AssetFields fields,
    Object? metadata
  }) = _Asset;
  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}

@freezed
class Includes with _$Includes {
  const factory Includes({
    @JsonKey(name: 'Asset') List<Asset>? asset,
    @JsonKey(name: 'Entry') List<Entry>? entry
  }) = _Includes;
  factory Includes.fromJson(Map<String, dynamic> json) => _$IncludesFromJson(json);
}

@freezed
class SearchParameters with _$SearchParameters {
  const factory SearchParameters({
    @JsonKey(name: 'content_type') String? contentType,
    String? select,
    int? limit,
    int? skip,
  }) = _SearchParameters;

  @override
  String toString() {
    return (contentType != null ? '&content_type=$contentType' : '') +
           (select != null ? '&select=$select' : '') +
           (limit != null ? '&limit=$limit' : '') +
           (skip != null ? '&skip=$skip' : '');
  }
}