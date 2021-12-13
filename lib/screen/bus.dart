import 'dart:io';
import 'dart:ui';

import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/provider/pdf.dart';
import 'package:brezovica/util/files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BusScreen extends HookConsumerWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(pdfProvider.notifier).update(Files.getBusPdfs);
    }, []);
    final pdfState = ref.watch(pdfProvider);
    return Container(
      color: Colors.blue,
      child: ListView.builder(
          itemCount: pdfState.pdfCount,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.transparent,
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: GlassmorphicContainer(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.centerLeft,
                border: 2,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.25),
                      const Color(0xFFFFFFFF).withOpacity(0.1),
                    ],
                    stops: const [
                      0.1,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      Files.getNameFromPath(pdfState.pdfs[index].path),
                      style: TextStyle(
                        color: Colors.blue[50],
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => SfPdfViewer.file(pdfState.pdfs[index]),
                      child: const Icon(Icons.download),
                      style:
                          ElevatedButton.styleFrom(shape: const CircleBorder()),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
