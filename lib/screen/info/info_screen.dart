import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/screen/info/info_screen_state.dart';
import 'package:brezovica/screen/post/post_screen.dart';
import 'package:brezovica/service/supabase/supabase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoScreen extends HookConsumerWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(infoScreenProvider.notifier).getPosts();
      return null;
    }, []);
    final infoScreenState = ref.watch(infoScreenProvider);
    final animationCtrl =
        useAnimationController(duration: const Duration(milliseconds: 300));
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
        child: infoScreenState.whenOrNull(
            listPosts: (posts) => postList(posts, ref),
            error: (e) => ErrorWidget(e)),
      ),
    );
  }
}

ListView postList(List<Post> postList, WidgetRef ref) {
  return ListView.builder(
    itemCount: postList.length,
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemBuilder: (context, index) {
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
                  leading: const CircleAvatar(
                    foregroundColor: Colors.lightGreen,
                    backgroundColor: Colors.lightGreen,
                  ),
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
