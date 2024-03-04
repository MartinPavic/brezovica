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

class BusScreenController {
  BusScreenController(this._contentfulService, this.busBox);

  final ContentfulService _contentfulService;

  final Box<Bus> busBox;

  Future<Either<String, List<Bus>>> fetchBusesFromContentful(SearchParameters searchParameters) {
    return TaskEither.fromTask(
      _contentfulService
          .getEntryCollection(
            searchParameters,
            (json) => Bus.fromJson(json as Map<String, dynamic>),
          )
          .map(
            (collection) => collection.items.map((entry) => entry.fields).toList(),
          ),
    ).mapLeft((l) => l.toString()).run();
  }

  Future<Either<String, DownloaderCore>> downloadBusPdf(
      Bus bus, Function(int, int) progressCallback) {
    return getDownloadDir().flatMap(
      (downloadDir) {
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
          progressCallback: progressCallback,
          deleteOnCancel: true,
        );
        return downloadFile(bus.pdfUrl, options);
      },
    ).run();
  }

  List<Bus> getBuses() {
    return busBox.values.toList();
  }
}

final busBoxFutureProvider = FutureProvider<Box<Bus>>(((ref) async {
  if (!Hive.isAdapterRegistered(Bus.hiveTypeId)) {
    Hive.registerAdapter(BusAdapter());
  }
  return await Hive.openBox<Bus>('buses');
}));

final busScreenControllerProvider = Provider.family<BusScreenController, Box<Bus>>((ref, busBox) {
  final contentfulService = ref.read(contentfulProvider);
  return BusScreenController(contentfulService, busBox);
});

final fetchBusesFromContentfulProvider = FutureProvider<List<Bus>>(((ref) async {
  final box = await ref.watch(busBoxFutureProvider.future);
  final result = await ref
      .read(busScreenControllerProvider(box))
      .fetchBusesFromContentful(SearchParameters(contentType: Option.of(Bus.contentType)));
  final buses = result.match((l) => List<Bus>.empty(), (r) => r);
  return buses;
}));
