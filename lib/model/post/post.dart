import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  static String contentType = 'post';

  const factory Post(
      {required String title,
      required String text,
      @Default(None()) Option<String> description,
      @Default(None()) Option<EntryFieldImage> avatar}) = _Post;
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
