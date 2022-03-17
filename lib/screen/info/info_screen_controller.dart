import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:brezovica/service/contentful/contentful_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoScreenController {
  InfoScreenController(this.contentfulService);

  final ContentfulService contentfulService;

  Future<List<Post>> getPosts(SearchParameters searchParameters) {
    return contentfulService
        .getEntryCollection<Post>(
          searchParameters,
          (json) => Post.fromJson(json as Map<String, dynamic>),
        )
        .map((postsCollection) => postsCollection.items.map((e) => e.fields).toList())
        .run();
  }
}

final infoScreenControllerProvider = Provider.autoDispose<InfoScreenController>((ref) {
  final contentfulService = ref.read(contentfulProvider);
  return InfoScreenController(contentfulService);
});

final getPostsFutureProvider =
    FutureProvider.family<List<Post>, SearchParameters>((ref, searchParameters) {
  final controller = ref.read(infoScreenControllerProvider);
  return controller.getPosts(searchParameters);
});
