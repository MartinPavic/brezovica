import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_state.freezed.dart';

@freezed
class PdfState with _$PdfState {
  const factory PdfState({
    required int pdfCount,
    required List<File> pdfs,
  }) = _PdfState;
}
