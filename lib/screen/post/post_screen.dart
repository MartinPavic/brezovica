import 'package:brezovica/model/post/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostScreen extends HookConsumerWidget {
  const PostScreen({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        body: Column(
          children: [
            Expanded(child: Text(post.title)),
            Expanded(child: Markdown(data: post.text)),
          ],
        ),
      ),
    );
  }
}
