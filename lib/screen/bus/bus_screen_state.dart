import 'dart:io';

import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/service/pdf/pdf.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

part 'bus_screen_state.freezed.dart';

class BusScreenProvider extends StateNotifier<BusScreenState> {
  BusScreenProvider(BusScreenState state) : super(state);

  Unit showPdf(File pdfFile) {
    final viewer = SfPdfViewer.file(pdfFile);
    state = BusScreenState.showPdf(viewer);
    return unit;
  }

}

final busScreenProvider =
    StateNotifierProvider<BusScreenProvider, BusScreenState>((ref) {
  final pdfState = ref.watch(pdfProvider);
  return pdfState.when(
    initial: () => BusScreenProvider(const BusScreenState.initial()),
    downloadedPdfs: (pdfs) {
      final busesErrors =
          pdfs.map((pdf) => Bus.fromPdf(pdf, Constants.busevi)).partition((t) => t.isLeft());

      final errors = busesErrors
          .foldLeft<List<String>>(
              List.empty(),
              (errors, iterable) =>
                  iterable.map((e) => e.getLeft().getOrElse(() => '')).toList())
          .filter((t) => t.isNotEmpty);
      final buses = busesErrors.foldLeftFirst<List<Bus>>(
          List.empty(),
          (buses, iterable) =>
              iterable.map((e) => e.getOrElse((l) => Bus.empty())).toList().sorted((a, b) => a.number - b.number));

      if (errors.isNotEmpty) {
        return BusScreenProvider(BusScreenState.error(errors.toList()));
      }
      return BusScreenProvider(BusScreenState.listBuses(buses));
    },
    error: (errors) => BusScreenProvider(BusScreenState.error(errors)),
  );
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
