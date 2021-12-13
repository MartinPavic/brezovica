import 'dart:io';

import 'package:brezovica/provider/pdf_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PdfProvider extends StateNotifier<PdfState> {
  PdfProvider() : super(const PdfState(pdfCount: 0, pdfs: []));
  Future<Unit> update(
    TaskEither<String, List<File>> Function() pdfsTask,
  ) async {
    final pdfs = pdfsTask();
    state = (await pdfs.run()).match(
      (error) => const PdfState(pdfCount: 0, pdfs: []),
      (pdfsList) => PdfState(pdfCount: pdfsList.length, pdfs: pdfsList),
    );
    return unit;
  }
}

final pdfProvider =
    StateNotifierProvider<PdfProvider, PdfState>((_) => PdfProvider());
