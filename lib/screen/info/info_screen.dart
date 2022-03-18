import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/screen/info/info_screen_controller.dart';
import 'package:brezovica/screen/post/post_screen.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:brezovica/service/contentful/contentful_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:brezovica/util/snackbar_mixin.dart';
import 'package:shimmer/shimmer.dart';

class InfoScreen extends HookWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationCtrl = useAnimationController(duration: const Duration(milliseconds: 300));
    animationCtrl.forward();
    return FadeTransition(
      opacity: Tween(begin: 0.5, end: 1.0).animate(animationCtrl),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/breza_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Consumer(
          builder: (_, ref, __) {
            final controller = ref.watch(
              getPostsFutureProvider(SearchParameters(contentType: Option.of(Post.contentType))),
            );
            return controller.when(
                data: (posts) => postList(posts),
                error: (error, _) {
                  context.showErrorSnackBar(message: error.toString());
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
                builder: (context) => PostScreen(
                  post: postList[index],
                ),
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
                          (asset) => Image.network('https:' + asset.fields.file.url).image,
                          () => null,
                        ),
                        () => null,
                      )),
                  title: Text(
                    postList[index].title,
                    style: TextStyle(
                        color: Colors.blue[50],
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.visible),
                  ),
                  subtitle: const Text("podnaslov"),
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
