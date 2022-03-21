import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/screen/info/info_screen_controller.dart';
import 'package:brezovica/screen/post/post_screen.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
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
                      child: postList(posts),
                    ),
                error: (error, _) {
                  WidgetsBinding.instance!.addPostFrameCallback(
                    (_) => ctx.showErrorSnackBar(message: error.toString()),
                  );
                  return Container();
                },
                loading: () => loadingList());
          },
        ),
      ),
    );
  }
}

ListView postList(List<Post> postList) {
  return ListView.builder(
    itemCount: postList.length,
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      final post = postList[index];
      return Card(
        color: Colors.green,
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostScreen(post: post),
              ),
            ),
          },
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: ListTile(
                  leading: CircleAvatar(
                      foregroundColor: Colors.lightGreen,
                      backgroundColor: Colors.lightGreen,
                      backgroundImage: post.avatar.match(
                        (avatar) => avatar.asset.match(
                          (asset) => CachedNetworkImageProvider('https:' + asset.fields.file.url),
                          () => null,
                        ),
                        () => null,
                      )),
                  title: Text(
                    post.title,
                    style: TextStyle(
                        color: Colors.blue[50],
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.visible),
                  ),
                  subtitle: post.description.match((t) => Text(t), () => null),
                ),
              ),
              const Expanded(
                flex: 1,
                child: Icon(
                  Icons.arrow_right,
                  size: 72,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

Shimmer loadingList() {
  return Shimmer.fromColors(
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
  );
}
