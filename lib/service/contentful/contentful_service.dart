import 'dart:convert';
import 'dart:io';

import 'package:brezovica/constants.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class ContentfulService {
  static const String accessToken =
      'K_TBUAwGk9xjGj_x2sN0wJdSC1wDDtmCmDXB-JuDOJc';
  final Uri _baseUri = Uri.parse(Constants.contentfulUrl +
      '/spaces/${Constants.contentfulSpaceId}' +
      '/environments/${Constants.contentfulEnvironmentId}');

  TaskEither<String, List<Entry>> listEntry(SearchParameters searchParameters) {
    return TaskEither.tryCatch(
      () async {
        Uri uri = Uri.parse(
            _baseUri.toString() + '/entries' + searchParameters.toString());
        http.Response response = await http
            .get(uri, headers: {'Authorization': 'Bearer $accessToken'});
        if (response.statusCode >= 200 && response.statusCode < 300) {
          Map<String, dynamic> json = jsonDecode(response.body);
          Collection result = Collection.fromJson(json, (json) => Entry.fromJson(json, fromJsonT));
          return result.items;
        } else {
          throw HttpException(response.reasonPhrase!);
        }
      },
      (error, _) => error.toString(),
    );
  }

  TaskEither<String, T> getEntry<T>(String entryId) {
    return TaskEither.tryCatch(
      () async {
        Uri uri = Uri.parse(_baseUri.toString() +
            '/entries/$entryId?access_token=$accessToken');
        http.Response response = await http.get(uri);
        if (response.statusCode >= 200 && response.statusCode < 300) {
          Map<String, dynamic> json = jsonDecode(response.body);
          Entry<T> result = Entry.fromJson(json);
          return result.fields;
        } else {
          throw HttpException(response.reasonPhrase!);
        }
      },
      (error, _) => error.toString(),
    );
  }
}

final contentfulProvider =
    Provider.autoDispose<ContentfulService>((_) => ContentfulService());
