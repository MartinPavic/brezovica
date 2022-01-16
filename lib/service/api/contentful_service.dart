import 'dart:convert';

import 'package:brezovica/constants.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class ContentfulService {
  static const String accessToken =
      'K_TBUAwGk9xjGj_x2sN0wJdSC1wDDtmCmDXB-JuDOJc';
  final Uri _baseUri = Uri.parse(Constants.contentfulUrl +
      '/spaces/${Constants.contentfulSpaceId}' +
      '/environments/${Constants.contentfulEnvironmentId}');
  Uri _getUri(String contentType) {
    return Uri.parse(_baseUri.toString() +
        '/entries?access_token=$accessToken&content_type=$contentType');
  }

  Future<List<T>> getAllFromContentType<T>(
      String contentType, T Function(RequiredPick) fromPick) async {
    final response = await http.get(_getUri(contentType));
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final result = pick(json, 'items')
        .asListOrEmpty((pick) => fromPick(pick('fields').required()));
    return result;
  }
}

final contentfulProvider = Provider((_) => ContentfulService());
