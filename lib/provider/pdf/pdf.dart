import 'dart:io';

import 'package:brezovica/provider/pdf/pdf_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfProvider extends StateNotifier<PdfState> {
  PdfProvider() : super(const PdfState.initial());
  Future<Unit> asyncUpdate<T>(
    TaskEither<String, List<File>> Function() pdfsTask,
  ) async {
    final pdfs = pdfsTask();
    state = (await pdfs.run()).match(
      (error) => PdfState.error([error]),
      (pdfsList) {
        if (pdfsList.isNotEmpty) {
          return PdfState.listPdfs(pdfsList);
        } else {
          return const PdfState.initial();
        }
      },
    );
    return unit;
  }

  Unit showPdf(File file) {
    state = PdfState.showPdf(SfPdfViewer.file(file));
    return unit;
  }
}

final pdfProvider = StateNotifierProvider<PdfProvider, PdfState>((_) => PdfProvider());
