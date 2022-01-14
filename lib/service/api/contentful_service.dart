import 'dart:convert';

import 'package:brezovica/model/post/post.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

class ContentfulService {
  static const String accessToken =
      'K_TBUAwGk9xjGj_x2sN0wJdSC1wDDtmCmDXB-JuDOJc';
  Uri _getUri(String accessToken, String contentType) {
    return Uri.parse(
        'https://cdn.contentful.com/spaces/r3npjoykim95/environments/master/entries?access_token=$accessToken&content_type=$contentType');
  }

  Future<List<Post>> fetchData() async {
    final response = await http.get(_getUri(accessToken, 'post'));
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final posts = pick(json, 'items')
        .asListOrEmpty((pick) => Post.fromPick(pick('fields').required()));
    print(posts);
    return posts;
  }
}
