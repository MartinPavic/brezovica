import 'dart:io';

import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:brezovica/service/contentful/contentful_service.dart';
import 'package:brezovica/util/files.dart';
import 'package:flowder/flowder.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BusScreenController {
  BusScreenController(this._contentfulService);

  final ContentfulService _contentfulService;

  final Box<Bus> busBox = Hive.box<Bus>('buses');

  TaskEither<String, List<Bus>> fetchBusesFromContentfulTask() {
    final searchParams = SearchParameters(contentType: Bus.contentType);
    return _contentfulService
        .getEntryCollection(
          searchParams,
          (json) => Bus.fromJson(json as Map<String, dynamic>),
        )
        .map((collection) =>
            collection.items.map((entry) => entry.fields).toList());
  }

  TaskEither<String, DownloaderCore> downloadBusPdf(Bus bus) {
    return getDownloadDir().flatMap((downloadDir) {
      final file = File(downloadDir.path + '/${bus.number.toString()}.pdf');
      final options = DownloaderUtils(
        file: file,
        onDone: () => busBox.put(
          bus.number,
          bus.copyWith(
            fileUrl: file.uri.path.toString(),
          ),
        ),
        progress: ProgressImplementation(),
        progressCallback: (count, total) => print('${(count / total) * 100}'),
        deleteOnCancel: true,
      );
      return downloadFile(bus.pdfUrl, options);
    });
  }

  IO<List<Bus>> getBuses() {
    return IO.of(busBox.values.toList());
  }

  IO<SfPdfViewer> showPdf(File pdfFile) {
    return IO.of(SfPdfViewer.file(pdfFile));
  }

}

final busScreenProvider = Provider<BusScreenController>((ref) {
  final contentfulService = ref.read(contentfulProvider);
  return BusScreenController(contentfulService);
});
