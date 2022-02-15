import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contentful_models.freezed.dart';
part 'contentful_models.g.dart';

@freezed
class Sys with _$Sys {
  const factory Sys(
      {required String type,
      String? linkType,
      String? id,
      Object? space,
      Object? environment,
      Object? contentType,
      int? revision,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? locale}) = _Sys;
  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class Entry<T> {
  final T fields;
  final Sys sys;
  final Object? metadata;

  Entry(this.fields, this.sys, this.metadata);

  factory Entry.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$EntryFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$EntryToJson(this, toJsonT);
}

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class Collection<T> {
  final Sys sys;
  final int total;
  final int skip;
  final int limit;
  final List<T> items;
  final Includes? includes;
  Collection(
      this.sys, this.total, this.skip, this.limit, this.items, this.includes);
  factory Collection.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$CollectionFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$CollectionToJson(this, toJsonT);
}

@freezed
class AssetFields with _$AssetFields {
  const factory AssetFields(
      {required String title,
      required FileFields file,
      String? description}) = _AssetFields;
  factory AssetFields.fromJson(Map<String, dynamic> json) =>
      _$AssetFieldsFromJson(json);
}

@freezed
class FileFields with _$FileFields {
  const factory FileFields(
      {required String contentType,
      required String fileName,
      required String url,
      required Object details}) = _FileFields;
  factory FileFields.fromJson(Map<String, dynamic> json) =>
      _$FileFieldsFromJson(json);
}

@freezed
class Asset with _$Asset {
  const factory Asset(
      {required Sys sys,
      required AssetFields fields,
      Object? metadata}) = _Asset;
  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}

@freezed
class Includes with _$Includes {
  const factory Includes(
      {@JsonKey(name: 'Asset') List<Asset>? asset,
      @JsonKey(name: 'Entry') List<Entry>? entry}) = _Includes;
  factory Includes.fromJson(Map<String, dynamic> json) =>
      _$IncludesFromJson(json);
}

@freezed
class SearchParameters with _$SearchParameters {
  const SearchParameters._();

  const factory SearchParameters(
          {@JsonKey(name: 'content_type') String? contentType,
          String? select,
          int? limit,
          int? skip,
          @JsonKey(name: 'mimetype_group') String? mimeTypeGroup}) =
      _SearchParameters;

  factory SearchParameters.fromJson(Map<String, dynamic> json) =>
      _$SearchParametersFromJson(json);

  String toQueryString() {
    return '?${toJson().entries.where((e) => e.value != null).map((e) => '${e.key}=${e.value}').join('&')}';
  }
}
