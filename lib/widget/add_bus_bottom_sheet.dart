import 'dart:io';

import 'package:brezovica/constants.dart';
import 'package:brezovica/util/files.dart';
import 'package:flowder/flowder.dart';
import 'package:flutter/material.dart';

Widget Function(BuildContext) addBusBottomSheet(List<File> pdfs) {
  final downloadedBuses =
      pdfs.map((f) => int.parse(Files.getNameFromPath(f.path)));
  return (BuildContext context) => Container(
        color: Constants.mainColor,
        child: ListView.builder(
          itemCount: Constants.busevi.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${Constants.busevi[index].type.description} (${Constants.busevi[index].number.toString()})',
                  style: const TextStyle(color: Colors.white),
                ),
                ElevatedButton(
                  onPressed: () async {
                    Files.getDownloadDir().flatMap((downloadDir) {
                      final options = DownloaderUtils(
                        file: File(downloadDir.path +
                            '/${Constants.busevi[index].number.toString()}.pdf'),
                        onDone: () => print('done'),
                        progress: ProgressImplementation(),
                        progressCallback: (count, total) =>
                            print('${(count / total) * 100}'),
                      );
                      final url = Constants.zetBusUrl +
                          Constants.busevi[index].number.toString() +
                          '.pdf';
                      return Files.downloadFile(url, options);
                    }).run();
                  },
                  child:
                      downloadedBuses.contains(Constants.busevi[index].number)
                          ? const Icon(Icons.check)
                          : const Icon(Icons.download),
                  style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                ),
              ],
            );
          },
        ),
      );
}
