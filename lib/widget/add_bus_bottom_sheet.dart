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
      itemCount: Constants.busevi.length,
      itemBuilder: (context, index) => BusListItem(Constants.busevi[index]),
    ),
  );
}

TaskEither<String, DownloaderCore> downloadBusPdf(Bus bus, Function(File) onDone) {
  return getDownloadDir().flatMap((downloadDir) {
    final file = File(downloadDir.path + '/${bus.number.toString()}.pdf');
    final options = DownloaderUtils(
      file: file,
      onDone: () => onDone(file),
      progress: ProgressImplementation(),
      progressCallback: (count, total) => print('${(count / total) * 100}'),
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
    final pdfState = ref.watch(pdfProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${bus.type.description} (${bus.number.toString()})',
          style: const TextStyle(color: Colors.white),
        ),
        ElevatedButton(
          onPressed: () async {
            downloadState.value.whenOrNull(
              notDownloading: () {
                pdfState.whenOrNull(downloadedPdfs: (pdfs) async {
                  if (pdfs.any((element) => int.parse(getFileName(element)) == bus.number)) {
                    return {};
                  } else {
                    final downloader = await downloadBusPdf(
                        bus,
                        (File file) {
                          downloadState.value = DownloadState.downloadSuccess(file);
                          ref.read(pdfProvider.notifier).addPdf(file);
                        }).run();
                    downloader.match(
                        (l) => downloadState.value =
                            DownloadState.downloadFailure(l),
                        (r) =>
                            downloadState.value = DownloadState.downloading(r));
                  }
                });
              },
              downloading: (d) {
                d.cancel();
              }
            );
          },
          child: downloadState.value.when(
              notDownloading: () {
                return pdfState.whenOrNull(downloadedPdfs: (pdfs) {
                  if (pdfs.any((element) => int.parse(getFileName(element)) == bus.number)) {
                    return const Icon(Icons.check);
                  } else {
                    return const Icon(Icons.download);
                  }
                });
              },
              downloading: (_) => const Icon(Icons.stop),
              downloadSuccess: (_) => const Icon(Icons.download_done),
              downloadFailure: (_) => const Icon(Icons.error)),
          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        ),
      ],
    );
  }
}
