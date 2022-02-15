import 'dart:io';

import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/service/contentful/contentful_models.dart';
import 'package:brezovica/service/contentful/contentful_service.dart';
import 'package:brezovica/service/pdf/pdf.dart';
import 'package:brezovica/service/pdf/pdf_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

part 'bus_screen_state.freezed.dart';

class BusScreenStateNotifier extends StateNotifier<BusScreenState> {
  BusScreenStateNotifier(this._contentfulService)
      : super(const BusScreenState.initial());

  final ContentfulService _contentfulService;
  BusScreenState previousState = const BusScreenState.initial();

  Unit getBuses() {
    final searchParams = SearchParameters(contentType: Bus.contentType);
    _contentfulService
        .getEntryCollection(
          searchParams,
          (json) => Bus.fromJson(json as Map<String, dynamic>),
        )
        .match(
          (error) => state = BusScreenState.error([error]),
          (busCollection) => state = BusScreenState.listBuses(
              busCollection.items.map((e) => e.fields).toList()),
        ).run();
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

  // factory BusScreenState.fromPdfState(PdfState pdfState) {
  //   final busesErrors = pdfState.pdfs
  //       .map((pdf) => Bus.fromPdf(pdf))
  //       .partition((t) => t.isLeft());

  //   final errors = busesErrors
  //       .foldLeft<List<String>>(
  //           List.empty(),
  //           (errors, iterable) =>
  //               iterable.map((e) => e.getLeft().getOrElse(() => '')).toList())
  //       .filter((t) => t.isNotEmpty);
  //   final buses = busesErrors.foldLeftFirst<List<Bus>>(
  //       List.empty(),
  //       (buses, iterable) => iterable
  //           .map((e) => e.getOrElse((l) => Bus.empty()))
  //           .toList()
  //           .sorted((a, b) => a.number - b.number));
  //   if (buses.isEmpty && errors.isEmpty) {
  //     return const BusScreenState.initial();
  //   }
  //   if (errors.isNotEmpty) {
  //     return BusScreenState.error(errors.toList());
  //   }
  //   return BusScreenState.listBuses(buses);
  // }
}
