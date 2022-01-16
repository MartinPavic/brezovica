import 'package:deep_pick/deep_pick.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  static const contentType = 'post';
  const factory Post({required String title, required String text}) = _Post;
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  factory Post.fromPick(RequiredPick pick) => Post(
        title: pick('title').asStringOrThrow(),
        text: pick('text').asStringOrThrow(),
      );
}
