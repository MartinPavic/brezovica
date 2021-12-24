import 'dart:io';

import 'package:brezovica/service/pdf/pdf_state.dart';
import 'package:brezovica/service/pdf/pdf_task.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PdfProvider extends StateNotifier<PdfState> {
  PdfProvider() : super(PdfState.initial());

  Future<Unit> getPdfs() async {
    final pdfTask = getBusPdfs();
    final pdfs = await pdfTask.run();
    pdfs.match(
      (error) => state = PdfState.error(state, error),
      (downloadedPdfs) => state = PdfState.downloadedPdfs(downloadedPdfs),
    );
    return unit;
  }

  Unit addPdf(Uri pdfFileUri) {
    state = PdfState.downloadedPdfs(state.pdfs.append(pdfFileUri).toList());
    return unit;
  }

  Unit deletePdf(File pdfFile) {
    pdfFile.deleteSync();
    state = PdfState.downloadedPdfs(state.pdfs.delete(pdfFile.uri).toList());
    return unit;
  }
}

final pdfProvider =
    StateNotifierProvider<PdfProvider, PdfState>((_) => PdfProvider());
