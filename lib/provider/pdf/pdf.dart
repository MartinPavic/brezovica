import 'dart:io';

import 'package:brezovica/provider/pdf/pdf_state.dart';
import 'package:brezovica/provider/pdf/pdf_task.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PdfProvider extends StateNotifier<PdfState> {
  PdfProvider() : super(const PdfState.initial());

  Future<Unit> getPdfs() async {
    final pdfTask = getBusPdfs();
    final pdfs = await pdfTask.run();
    pdfs.match(
      (error) => state = PdfState.error([error]),
      (downloadedPdfs) => state = PdfState.downloadedPdfs(downloadedPdfs),
    );
    return unit;
  }

  Unit addPdf(File pdfFile) {
    state.whenOrNull(
        downloadedPdfs: (pdfs) => state = PdfState.downloadedPdfs(
              pdfs.append(pdfFile).toList(),
            ));
    return unit;
  }

  Unit deletePdf(File pdfFile) {
    state.whenOrNull(
      downloadedPdfs: (pdfs) {
        state = PdfState.downloadedPdfs(pdfs.delete(pdfFile).toList());
      },
    );
    return unit;
  }
}

final pdfProvider =
    StateNotifierProvider<PdfProvider, PdfState>((_) => PdfProvider());
