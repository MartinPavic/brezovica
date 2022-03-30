import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:brezovica/service/contentful/contentful_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoScreenController {
  InfoScreenController(this._contentfulService);

  final ContentfulService _contentfulService;

  Future<List<Post>> getPosts(SearchParameters searchParameters) {
    return _contentfulService
        .getEntryCollection<Post>(
          searchParameters,
          (json) => Post.fromJson(json as Map<String, dynamic>),
        )
        .map((postsCollection) => postsCollection.items
            .map((e) => postsCollection.includes.match(
                (includes) => includes.assets.match(
                    (assets) => e.fields.copyWith(
                          image: e.fields.image.map(
                            (image) => image.copyWith(
                              asset: assets.filter((t) => t.sys.id == image.sys.id).head,
                            ),
                          ),
                        ),
                    () => e.fields),
                () => e.fields))
            .toList())
        .run();
  }
}

final infoScreenControllerProvider = Provider.autoDispose<InfoScreenController>((ref) {
  final contentfulService = ref.read(contentfulProvider);
  return InfoScreenController(contentfulService);
});

final getPostsFutureProvider =
    FutureProvider.family<List<Post>, SearchParameters>((ref, searchParameters) async {
  final controller = ref.read(infoScreenControllerProvider);
  return await controller.getPosts(searchParameters);
});
