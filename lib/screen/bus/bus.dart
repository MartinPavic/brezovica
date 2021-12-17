import 'dart:io';
import 'dart:ui';

import 'package:brezovica/constants.dart';
import 'package:brezovica/provider/pdf/pdf.dart';
import 'package:brezovica/util/files.dart';
import 'package:brezovica/widget/add_bus_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BusScreen extends HookConsumerWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(pdfProvider.notifier).asyncUpdate(Files.getBusPdfs);
    }, []);
    final pdfState = ref.watch(pdfProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Constants.mainColor,
        onPressed: () {
          pdfState.whenOrNull(
            initial: () => showModalBottomSheet(
              context: context,
              builder: addBusBottomSheet(ref),
            ),
            listPdfs: (pdfs) => showModalBottomSheet(
              context: context,
              builder: addBusBottomSheet(ref),
            ),
          );
        },
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bus_bg.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: pdfState.when(
            initial: () => const Center(),
            showPdf: (viewer) => viewer,
            listPdfs: (pdfList) => busList(pdfList, ref),
            error: (error) => ErrorWidget(error.join(" ")),
          )),
    );
  }

  ListView busList(List<File> pdfList, WidgetRef ref) {
    return ListView.builder(
        itemCount: pdfList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.transparent,
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () => ref.read(pdfProvider.notifier).showPdf(pdfList[index]),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      Files.getNameFromPath(pdfList[index].path),
                      style: TextStyle(
                        color: Colors.blue[50],
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () =>
                    //       ,
                    //   child: const Icon(Icons.picture_as_pdf_rounded),
                    //   style: ElevatedButton.styleFrom(
                    //     shape: const CircleBorder(),
                    //   ),
                    // )
                    Text(
                      Constants.busevi.firstWhere((bus) => bus.number == int.parse(Files.getNameFromPath(pdfList[index].path))).type.description.toString(),
                      style: TextStyle(
                        color: Colors.blue[50],
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
