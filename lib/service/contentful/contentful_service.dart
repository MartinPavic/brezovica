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

  TaskEither<String, Collection<Entry<T>>> getEntryCollection<T>(
      SearchParameters searchParameters, T Function(Object?) parseT) {
    return TaskEither.tryCatch(
      () async {
        Uri uri = Uri.parse(_baseUri.toString() +
            '/entries' +
            searchParameters.toQueryString());
        http.Response response = await http
            .get(uri, headers: {'Authorization': 'Bearer $accessToken'});
        if (response.statusCode >= 200 && response.statusCode < 300) {
          Map<String, dynamic> json = jsonDecode(response.body);
          Collection<Entry<T>> result = Collection.fromJson(json,
              (json) => Entry.fromJson(json as Map<String, dynamic>, parseT));
          return result;
        } else {
          throw HttpException(response.reasonPhrase!);
        }
      },
      (error, _) => error.toString(),
    );
  }

  TaskEither<String, Entry<T>> getEntry<T>(
      String entryId, T Function(Object?) parseT) {
    return TaskEither.tryCatch(
      () async {
        Uri uri = Uri.parse(_baseUri.toString() +
            '/entries/$entryId');
        http.Response response = await http.get(uri, headers: {'Authorization': 'Bearer $accessToken'});
        if (response.statusCode >= 200 && response.statusCode < 300) {
          Map<String, dynamic> json = jsonDecode(response.body);
          Entry<T> result = Entry.fromJson(json, parseT);
          return result;
        } else {
          throw HttpException(response.reasonPhrase!);
        }
      },
      (error, _) => error.toString(),
    );
  }

  TaskEither<String, Collection<Asset>> getAssetCollection(
      SearchParameters searchParameters) {
    return TaskEither.tryCatch(() async {
      Uri uri = Uri.parse(_baseUri.toString() +
          '/assets?access_token=$accessToken' +
          searchParameters.toQueryString());
      http.Response response = await http.get(uri, headers: {'Authorization': 'Bearer $accessToken'});
      if (response.statusCode >= 200 && response.statusCode < 300) {
        Map<String, dynamic> json = jsonDecode(response.body);
        Collection<Asset> result = Collection.fromJson(
            json, (json) => Asset.fromJson(json as Map<String, dynamic>));
        return result;
      } else {
        throw HttpException(response.reasonPhrase!);
      }
    }, (error, _) => error.toString());
  }

  TaskEither<String, Asset> getAsset(String assetId) {
    return TaskEither.tryCatch(() async {
      Uri uri = Uri.parse(
          _baseUri.toString() + '/assets/$assetId?access_token=$accessToken');
      http.Response response = await http.get(uri);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        Map<String, dynamic> json = jsonDecode(response.body);
        Asset result = Asset.fromJson(json);
        return result;
      } else {
        throw HttpException(response.reasonPhrase!);
      }
    }, (error, _) => error.toString());
  }
}

final contentfulProvider =
    Provider.autoDispose<ContentfulService>((_) => ContentfulService());
