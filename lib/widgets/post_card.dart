import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/post/post.dart';
import '../screen/post/post_screen.dart';

class PostCard extends StatelessWidget {
  const PostCard(this.post, {Key? key}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Constants.mainColor,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
        child: SizedBox(
          height: 200,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            post.image.match(
                (image) => image.asset.match(
                    (asset) => Hero(
                          tag: post.title,
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: CachedNetworkImage(
                              imageUrl: 'https:' + asset.fields.file.url,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    () => const SizedBox()),
                () => const SizedBox()),
            Container(
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color.fromRGBO(0, 0, 0, 0.4),
              child: Text(
                post.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
