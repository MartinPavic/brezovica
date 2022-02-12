import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/screen/info/info_screen.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:brezovica/service/contentful/contentful_service.dart';
import 'package:brezovica/service/supabase/supabase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'info_screen_state.freezed.dart';

class InfoScreenStateNotifier extends StateNotifier<InfoScreenState> {
  InfoScreenStateNotifier(this.contentfulService)
      : super(const InfoScreenState.initial());

  final ContentfulService contentfulService;

  Future<InfoScreenState> getPosts() {
    final searchParams = SearchParameters(contentType: Post.contentType);
    final getPostsTask = contentfulService.getEntryCollection<Post>(
        searchParams, (json) => Post.fromJson(json as Map<String, dynamic>));

    return getPostsTask
        .match(
          (error) => state = InfoScreenState.error([error]),
          (postsCollection) => state = InfoScreenState.listPosts(
              postsCollection.items.map((e) => e.fields).toList()),
        )
        .run();
  }
}

final infoScreenProvider =
    StateNotifierProvider<InfoScreenStateNotifier, InfoScreenState>((ref) {
  final contentfulService = ref.read(contentfulProvider);
  return InfoScreenStateNotifier(contentfulService);
});

@freezed
class InfoScreenState with _$InfoScreenState {
  const InfoScreenState._();
  const factory InfoScreenState.initial() = _InitialInfoScreenState;
  const factory InfoScreenState.listPosts(List<Post> posts) =
      _ListPostsInfoScreenState;
  const factory InfoScreenState.error(List<String> errors) =
      _ErrorInfoScreenState;
}
