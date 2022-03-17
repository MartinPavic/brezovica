import 'package:brezovica/constants.dart';
import 'package:brezovica/model/post/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: TextButton.icon(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Constants.mainColor,),
            label: const Text(''),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            post.title,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Constants.mainColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Markdown(data: post.text),
        ),
      ),
    );
  }
}
