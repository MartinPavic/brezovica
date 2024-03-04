import 'package:brezovica/constants.dart';
import 'package:brezovica/model/post/post.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColor,
      body: Stack(children: [
        Column(
          children: [
            Flexible(
              child: post.image.match(
                  (avatar) => avatar.asset.match(
                      (asset) => Hero(
                            tag: post.title,
                            child: CachedNetworkImage(
                              width: MediaQuery.of(context).size.width,
                              imageUrl: 'https:' + asset.fields.file.url,
                              fit: BoxFit.cover,
                            ),
                          ),
                      () => const SizedBox()),
                  () => const SizedBox()),
            ),
            Flexible(
              child: Markdown(
                data: post.text,
                styleSheet: MarkdownStyleSheet(
                  p: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        SafeArea(
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 42,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ]),
    );
  }
}
