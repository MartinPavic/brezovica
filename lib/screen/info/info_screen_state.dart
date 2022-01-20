import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/service/contentful/contentful_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'info_screen_state.freezed.dart';

class InfoScreenStateNotifier extends StateNotifier<InfoScreenState> {
  InfoScreenStateNotifier(this.contentfulService)
      : super(const InfoScreenState.initial());

  final ContentfulService contentfulService;

  Future<Unit> getPosts() async {
    final posts = await contentfulService.getAllFromContentType<Post>(
        'post', (pick) => Post.fromPick(pick));
    state = InfoScreenState.listPosts(posts);
    return unit;
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
