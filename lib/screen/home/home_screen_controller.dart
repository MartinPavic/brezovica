import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/post/post.dart';
import '../../service/contentful/contentful_models.dart';
import '../../service/contentful/contentful_service.dart';

class HomeScreenController {
  HomeScreenController(this._contentfulService);

  final ContentfulService _contentfulService;

  Future<Option<Post>> getLatestPost() async {
    final searchParameters = SearchParameters(
      contentType: Option.of(Post.contentType),
      limit: Option.of(1),
    );
    final post = await _contentfulService
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
            .head)
        .run();
        return post;
  }
}

final homeScreenControllerProvider = Provider.autoDispose<HomeScreenController>((ref) {
  final _contentfulService = ref.read(contentfulProvider);
  return HomeScreenController(_contentfulService);
});

final latestPostFutureProvider = FutureProvider<Option<Post>>((ref) async {
  final controller = ref.read(homeScreenControllerProvider);
  return await controller.getLatestPost();
},);