import 'package:brezovica/constants.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends HookConsumerWidget {
  const PdfScreen(this._viewer, {Key? key}) : super(key: key);

  final SfPdfViewer _viewer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => Navigator.pop(context),
        //   child: const Icon(Icons.arrow_back),
        //   backgroundColor: Constants.mainColor,
        // ),
        body: _viewer,
      ),
    );
  }
}
