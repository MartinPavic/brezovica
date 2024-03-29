import 'dart:convert';
import 'dart:io';

import 'package:brezovica/constants.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class ContentfulService {
  static final String _accessToken = dotenv.env['CONTENTFUL_ACCESS_TOKEN']!;

  final Uri _baseUri = Uri.parse(Constants.contentfulUrl +
      '/spaces/${dotenv.env['CONTENTFUL_SPACE_ID']!}' +
      '/environments/${dotenv.env['CONTENTFUL_ENVIRNOMENT_ID']!}');

  Task<Collection<Entry<T>>> getEntryCollection<T>(
      SearchParameters searchParameters, T Function(Object?) parseT) {
    return Task(() async {
      Uri uri = Uri.parse(_baseUri.toString() + '/entries' + searchParameters.toQueryString());
      http.Response response =
          await http.get(uri, headers: {'Authorization': 'Bearer $_accessToken'});
      if (response.statusCode >= 200 && response.statusCode < 300) {
        Map<String, dynamic> json = jsonDecode(response.body);
        Collection<Entry<T>> result = Collection.fromJson(
            json, (json) => Entry.fromJson(json as Map<String, dynamic>, parseT));
        return result;
      } else {
        throw HttpException(response.reasonPhrase!);
      }
    });
  }

  Task<Entry<T>> getEntry<T>(String entryId, T Function(Object?) parseT) {
    return Task(
      () async {
        Uri uri = Uri.parse(_baseUri.toString() + '/entries/$entryId');
        http.Response response =
            await http.get(uri, headers: {'Authorization': 'Bearer $_accessToken'});
        if (response.statusCode >= 200 && response.statusCode < 300) {
          Map<String, dynamic> json = jsonDecode(response.body);
          Entry<T> result = Entry.fromJson(json, parseT);
          return result;
        } else {
          throw HttpException(response.reasonPhrase!);
        }
      },
    );
  }

  Task<Collection<Asset>> getAssetCollection(SearchParameters searchParameters) {
    return Task(
      () async {
        Uri uri = Uri.parse(_baseUri.toString() + '/assets' + searchParameters.toQueryString());
        http.Response response =
            await http.get(uri, headers: {'Authorization': 'Bearer $_accessToken'});
        if (response.statusCode >= 200 && response.statusCode < 300) {
          Map<String, dynamic> json = jsonDecode(response.body);
          Collection<Asset> result =
              Collection.fromJson(json, (json) => Asset.fromJson(json as Map<String, dynamic>));
          return result;
        } else {
          throw HttpException(response.reasonPhrase!);
        }
      },
    );
  }

  Task<Asset> getAsset(String assetId) {
    return Task(
      () async {
        Uri uri = Uri.parse(_baseUri.toString() + '/assets/$assetId');
        http.Response response =
            await http.get(uri, headers: {'Authorization': 'Bearer $_accessToken'});
        if (response.statusCode >= 200 && response.statusCode < 300) {
          Map<String, dynamic> json = jsonDecode(response.body);
          Asset result = Asset.fromJson(json);
          return result;
        } else {
          throw HttpException(response.reasonPhrase!);
        }
      },
    );
  }
}

final contentfulProvider = Provider.autoDispose<ContentfulService>((_) => ContentfulService());
