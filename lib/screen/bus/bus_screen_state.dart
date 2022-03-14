import 'dart:io';

import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:brezovica/service/contentful/contentful_service.dart';
import 'package:brezovica/util/files.dart';
import 'package:flowder/flowder.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

part 'bus_screen_state.freezed.dart';

class BusScreenStateNotifier extends StateNotifier<BusScreenState> {
  BusScreenStateNotifier(this._contentfulService)
      : super(const BusScreenState.initial());

  final ContentfulService _contentfulService;
  final Box<Bus> busBox = Hive.box<Bus>('buses');
  BusScreenState previousState = const BusScreenState.initial();

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

  Future<Unit> getBuses() async {
    // Fetch buses from hive database
    final busList = busBox.values.toList();
    state = BusScreenState.listBuses(busList);

    return unit;
  }

  Unit showPdf(File pdfFile) {
    final viewer = SfPdfViewer.file(pdfFile);
    previousState = state;
    state = BusScreenState.showPdf(viewer);
    return unit;
  }

  Unit closePdf() {
    state.whenOrNull(showPdf: (_) => state = previousState);
    return unit;
  }
}

final busScreenProvider =
    StateNotifierProvider<BusScreenStateNotifier, BusScreenState>((ref) {
  final contentfulService = ref.read(contentfulProvider);
  return BusScreenStateNotifier(contentfulService);
});

@freezed
class BusScreenState with _$BusScreenState {
  const BusScreenState._();
  const factory BusScreenState.initial() = _InitialBusScreenState;
  const factory BusScreenState.listBuses(List<Bus> buses) =
      _ListBusesBusScreenState;
  const factory BusScreenState.showPdf(SfPdfViewer viewer) =
      _ShowPdfBusScreenState;
  const factory BusScreenState.error(List<String> errors) =
      _ErrorBusScreenState;
}
