import 'package:brezovica/constants.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BusScreen extends StatelessWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset('assets/161.pdf');
  }
}
