import 'package:brezovica/constants.dart';
import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/screen/info/info_screen_controller.dart';
import 'package:brezovica/screen/post/post_screen.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:brezovica/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:brezovica/util/snackbar_mixin.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';

class InfoScreen extends HookWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/breza_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Consumer(
          builder: (ctx, ref, __) {
            final postsFutureProvider =
                getPostsFutureProvider(SearchParameters(contentType: Option.of(Post.contentType)));
            final postsAsyncValue = ref.watch(postsFutureProvider);
            return postsAsyncValue.when(
              data: (posts) => RefreshIndicator(
                onRefresh: () {
                  ref.refresh(postsFutureProvider);
                  return ref.read(postsFutureProvider.future);
                },
                child: PostList(postList: posts),
              ),
              error: (error, _) {
                WidgetsBinding.instance!.addPostFrameCallback(
                  (_) => ctx.showErrorSnackBar(message: error.toString()),
                );
                return Container();
              },
              loading: () => Shimmer.fromColors(
                child: ListView.builder(
                  itemBuilder: (context, index) => Opacity(
                    opacity: 0.8,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.grey,
                      ),
                      height: 72,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    ),
                  ),
                ),
                baseColor: Colors.grey,
                highlightColor: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({required this.postList, Key? key}) : super(key: key);

  final List<Post> postList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final post = postList[index];
        return PostCard(post);
      },
    );
  }
}
