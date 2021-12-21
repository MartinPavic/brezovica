import 'package:brezovica/constants.dart';
import 'package:brezovica/model/bus/bus.dart';
import 'package:brezovica/provider/pdf/pdf.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

part 'bus_screen_state.freezed.dart';

class BusScreenProvider extends StateNotifier<BusScreenState> {
  BusScreenProvider(BusScreenState state) : super(state);
}

final busScreenProvider =
    StateNotifierProvider<BusScreenProvider, BusScreenState>((ref) {
  final pdfState = ref.watch(pdfProvider);
  return pdfState.when(
    initial: () => BusScreenProvider(const BusScreenState.initial()),
    downloadedPdfs: (pdfs) {
      final busesEithers =
          pdfs.map((pdf) => Bus.fromPdf(pdf, Constants.busevi));
      final buses = busesEithers;
      final errors = busesEithers.filter((t) => t.isLeft());

      return BusScreenProvider(BusScreenState.listBuses(pdfs));
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
