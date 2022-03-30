import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  static String contentType = 'post';

  @OptionEntryFieldImageConverter()
  const factory Post(
      {required String title,
      required String text,
      @Default(None()) Option<String> description,
      @Default(None()) Option<EntryFieldImage> image}) = _Post;
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
      
}

class OptionEntryFieldImageConverter implements JsonConverter<Option<EntryFieldImage>, Map<String, dynamic>?> {
  const OptionEntryFieldImageConverter();
  
  @override
  Option<EntryFieldImage> fromJson(Map<String, dynamic>? json) {
    return json == null ? const None() : Option.of(EntryFieldImage.fromJson(json));
  }

  @override
  Map<String, dynamic>? toJson(Option<EntryFieldImage> object) {
    return object.match((t) => t.toJson(), () => null);
  }
  
}