import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contentful_models.freezed.dart';
part 'contentful_models.g.dart';

@freezed
class Sys with _$Sys {
  const factory Sys(
      {required String type,
      @Default(None()) Option<String> linkType,
      @Default(None()) Option<String> id,
      @Default(None()) Option<Object> space,
      @Default(None()) Option<Object> environment,
      @Default(None()) Option<Object> contentType,
      @Default(None()) Option<int> revision,
      @Default(None()) Option<String> createdAt,
      @Default(None()) Option<String> updatedAt,
      @Default(None()) Option<String> locale}) = _Sys;
  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class Entry<T> {
  final T fields;
  final Sys sys;
  final Option<Object> metadata;

  Entry(this.fields, this.sys, this.metadata);

  factory Entry.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$EntryFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$EntryToJson(this, toJsonT);
}

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
@OptionIncludesJsonConverter()
class Collection<T> {
  final Sys sys;
  final int total;
  final int skip;
  final int limit;
  final List<T> items;
  final Option<Includes> includes;
  Collection(this.sys, this.total, this.skip, this.limit, this.items, this.includes);
  factory Collection.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$CollectionFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$CollectionToJson(this, toJsonT);
}

class OptionIncludesJsonConverter implements JsonConverter<Option<Includes>, Map<String, dynamic>?> {
  const OptionIncludesJsonConverter();

  @override
  Option<Includes> fromJson(Map<String, dynamic>? json) {
    return json == null ? const None() : Option.of(Includes.fromJson(json));
  }

  @override
  Map<String, dynamic>? toJson(Option<Includes> object) {
    return object.match((t) => t.toJson(), () => null);
  }
  
}

@freezed
class AssetFields with _$AssetFields {
  const factory AssetFields({
    required String title,
    required FileFields file,
    @Default(None()) Option<String> description,
  }) = _AssetFields;
  factory AssetFields.fromJson(Map<String, dynamic> json) => _$AssetFieldsFromJson(json);
}

@freezed
class FileFields with _$FileFields {
  const factory FileFields(
      {required String contentType,
      required String fileName,
      required String url,
      required Object details}) = _FileFields;
  factory FileFields.fromJson(Map<String, dynamic> json) => _$FileFieldsFromJson(json);
}

@freezed
class Asset with _$Asset {
  const factory Asset({
    required Sys sys,
    required AssetFields fields,
    @Default(None()) Option<Object> metadata,
  }) = _Asset;
  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}

@freezed
class Includes with _$Includes {
  @OptionListAssetConverter()
  const factory Includes({
    @JsonKey(name: 'Asset') @Default(None()) Option<List<Asset>> assets,
    @JsonKey(name: 'Entry') @Default(None()) Option<List<Entry>> entries,
  }) = _Includes;
  factory Includes.fromJson(Map<String, dynamic> json) => _$IncludesFromJson(json);
}

class OptionListAssetConverter implements JsonConverter<Option<List<Asset>>, List> {
  const OptionListAssetConverter();
  
  @override
  Option<List<Asset>> fromJson(List json) {
    return Option.of(json.map((e) => Asset.fromJson(e)).toList());
  }

  @override
  List toJson(Option<List<Asset>> object) {
    return object.match((t) => t.map((e) => e.toJson()).toList(), () => []);
  }
  
}

@freezed
class SearchParameters with _$SearchParameters {
  const SearchParameters._();

  const factory SearchParameters({
    @JsonKey(name: 'content_type') @Default(None()) Option<String> contentType,
    @Default(None()) Option<String> select,
    @Default(None()) Option<int> limit,
    @Default(None()) Option<int> skip,
    @JsonKey(name: 'mimetype_group') @Default(None()) Option<String> mimeTypeGroup,
  }) = _SearchParameters;

  factory SearchParameters.fromJson(Map<String, dynamic> json) => _$SearchParametersFromJson(json);

  String toQueryString() {
    return '?${toJson().entries.where((e) => e.value != null).map((e) => '${e.key}=${e.value}').join('&')}';
  }
}

@freezed
class EntryFieldImage with _$EntryFieldImage {
  @OptionAssetConverter()
  const factory EntryFieldImage({
    required Sys sys,
    @Default(None()) Option<Asset> asset,
  }) = _EntryFieldImage;
  factory EntryFieldImage.fromJson(Map<String, dynamic> json) => _$EntryFieldImageFromJson(json);
}

class OptionAssetConverter implements JsonConverter<Option<Asset>, Map<String, dynamic>?> {
  const OptionAssetConverter();
  
  @override
  Option<Asset> fromJson(Map<String, dynamic>? json) {
    return json == null ? const None() : Option.of(Asset.fromJson(json));
  }

  @override
  Map<String, dynamic>? toJson(Option<Asset> object) {
    return object.match((t) => t.toJson(), () => null);
  }
  
}