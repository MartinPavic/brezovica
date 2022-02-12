import 'package:brezovica/model/post/post.dart';
import 'package:brezovica/screen/info/info_screen_state.dart';
import 'package:brezovica/service/supabase/supabase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoScreen extends HookConsumerWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(infoScreenProvider.notifier).getPosts();
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
          color: Colors.transparent,
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () => {},
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: GlassmorphicContainer(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              borderRadius: 20,
              blur: 2,
              alignment: Alignment.centerLeft,
              border: 2,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.25),
                    const Color(0xFFFFFFFF).withOpacity(0.1),
                    const Color(0xFFffffff).withOpacity(0.05),
                  ],
                  stops: const [
                    0.1,
                    0.5,
                    1,
                  ]),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFffffff).withOpacity(0.5),
                  const Color((0xFFFFFFFF)).withOpacity(0.5),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      postList[index].title,
                      style: TextStyle(
                          color: Colors.blue[50],
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.visible),
                    ),
                  ),
                  Expanded(
                    child: Markdown(
                      data: postList[index].text,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
