import 'dart:convert';

import 'package:brezovica/constants.dart';
import 'package:brezovica/model/post/post.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class ContentfulService {
  static const String accessToken =
      'K_TBUAwGk9xjGj_x2sN0wJdSC1wDDtmCmDXB-JuDOJc';
  static Uri getUri(String accessToken, String contentType) {
    return Uri.parse(
        '${Constants.contentfulUrl}/spaces/${Constants.contentfulSpaceId}/environments/${Constants.contentfulEnvironmentId}/entries?access_token=$accessToken&content_type=$contentType');
  }

  Future<List<T>> fetchAll<T>() async {
    final response = await http.get(getUri(accessToken, 'bus'));
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final buses = pick(json, 'items').asListOrEmpty((pick) => Bus.fromPick(pick('fields').required()));    
  }

  Future<List<Post>> fetchData() async {
    final response = await http.get(getUri(accessToken, 'post'));
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final posts = pick(json, 'items')
        .asListOrEmpty((pick) => Post.fromPick(pick('fields').required()));
    return posts;
  }
}

final contentfulProvider = Provider((_) => ContentfulService());
