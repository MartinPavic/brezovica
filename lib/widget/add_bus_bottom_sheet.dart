import 'dart:io';

import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/model/download_state/download_state.dart';
import 'package:brezovica/provider/pdf/pdf.dart';
import 'package:brezovica/util/files.dart';
import 'package:flowder/flowder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Widget Function(BuildContext) addBusBottomSheet(WidgetRef ref) {
  final pdfState = ref.watch(pdfProvider);
  return (BuildContext context) => Container(
        color: Constants.mainColor,
        child: ListView.builder(
          itemCount: Constants.busevi.length,
          itemBuilder: (context, index) {
            final downloadState =
                useState(const DownloadState.notDownloading());
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Constants.busevi[index].type.description} (${Constants.busevi[index].number.toString()})',
                  style: const TextStyle(color: Colors.white),
                ),
                ElevatedButton(
                  onPressed: () {
                    downloadState.value.when(
                      notDownloading: () {},
                      downloading: () {},
                      downloadSuccess: (s) {},
                      downloadFailure: (f) {},
                    );
                  },
                  child: const Icon(
                    Icons.download,
                    color: Constants.mainColor,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(), primary: Colors.white),
                ),
              ],
            );
          },
        ),
      );
}

downloadBusPdf(Bus bus) {
  return Files.getDownloadDir().flatMap((downloadDir) {
    final options = DownloaderUtils(
      file: File(downloadDir.path + '/${bus.number.toString()}.pdf'),
      onDone: () => print('done'),
      progress: ProgressImplementation(),
      progressCallback: (count, total) => print('${(count / total) * 100}'),
    );
    final url = Constants.zetBusUrl + bus.number.toString() + '.pdf';
    return Files.downloadFile(url, options);
  });
}
