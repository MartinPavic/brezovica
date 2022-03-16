import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends StatelessWidget {
  const PdfScreen(this._viewer, {Key? key}) : super(key: key);

  final SfPdfViewer _viewer;

  @override
  Widget build(BuildContext context) {
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
