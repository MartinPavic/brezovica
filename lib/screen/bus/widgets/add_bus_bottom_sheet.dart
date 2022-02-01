import 'dart:io';

import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/model/download_state/download_state.dart';
import 'package:brezovica/service/pdf/pdf.dart';
import 'package:brezovica/util/files.dart';
import 'package:flowder/flowder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Widget addBusBottomSheet(BuildContext context) {
  return Container(
    color: Constants.mainColor,
    child: ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) => BusListItem(Bus.empty()),
    ),
  );
}

TaskEither<String, DownloaderCore> _downloadBusPdf(
    Bus bus, Function(int, int) progressCallback, Function(File) onDone) {
  return getDownloadDir().flatMap((downloadDir) {
    final file = File(downloadDir.path + '/${bus.number.toString()}_${bus.name}.pdf');
    final options = DownloaderUtils(
      file: file,
      onDone: () => onDone(file),
      progress: ProgressImplementation(),
      progressCallback: progressCallback,
      deleteOnCancel: true,
    );
    final url = Constants.zetBusUrl + bus.number.toString() + '.pdf';
    return downloadFile(url, options);
  });
}

class BusListItem extends HookConsumerWidget {
  const BusListItem(this.bus, {Key? key}) : super(key: key);
  final Bus bus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadState = useState(const DownloadState.notDownloading());
    final downloadProgress = useState(0.0);
    final pdfState = ref.watch(pdfProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${bus.name} (${bus.number.toString()})',
          style: const TextStyle(color: Colors.white),
        ),
        Stack(
          fit: StackFit.loose,
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 4,
              value: downloadProgress.value,
            ),
            ElevatedButton(
              onPressed: () {
                downloadState.value.whenOrNull(notDownloading: () async {
                  if (pdfState.pdfs.any((element) =>
                      int.parse(getFileName(element)) == bus.number)) {
                    return {};
                  } else {
                    _downloadBusPdf(
                      bus,
                      (current, total) => downloadProgress.value = current / total, 
                      (File file) {
                        downloadState.value = DownloadState.downloadSuccess(file);
                        ref.read(pdfProvider.notifier).addPdf(file.uri);
                      },
                    ).match(
                        (l) => downloadState.value =
                            DownloadState.downloadFailure(l),
                        (r) =>
                            downloadState.value = DownloadState.downloading(r),
                    ).run();
                  }
                });
              },
              child: downloadState.value.when(
                  notDownloading: () {
                    if (pdfState.pdfs.any((element) =>
                        int.parse(getFileName(element)) == bus.number)) {
                      return const Icon(Icons.check);
                    } else {
                      return const Icon(Icons.download);
                    }
                  },
                  downloading: (_) => const Icon(Icons.stop),
                  downloadSuccess: (_) => const Icon(Icons.download_done),
                  downloadFailure: (_) => const Icon(Icons.error)),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: Colors.transparent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
