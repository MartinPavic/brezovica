import 'dart:convert';

import 'package:brezovica/constants.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class ContentfulService {
  static const String accessToken = String.fromEnvironment('accessToken');
  final Uri _baseUri = Uri.parse(Constants.contentfulUrl +
      '/spaces/${Constants.contentfulSpaceId}' +
      '/environments/${Constants.contentfulEnvironmentId}');
  Uri _getUri(String contentType) {
    return Uri.parse(_baseUri.toString() +
        '/entries?access_token=$accessToken&content_type=$contentType');
  }

  TaskEither<String, List<T>> listEntry<T>(
      String contentType, T Function(String) parse) {
    return TaskEither.tryCatch(() async {
      http.Response response = await http.get(_getUri(contentType));
      Map<String, dynamic> json = jsonDecode(response.body);
      Option<List<T>> result = json.lookup('items').map((items) => (items as List).map((item) => parse(item)).toList());
      return result.getOrElse(() => []);
    }, (error, stackTrace) => error.toString());
  }

  TaskEither<String, T> getEntry<T>()
}

final contentfulProvider = Provider.autoDispose((_) => ContentfulService());
