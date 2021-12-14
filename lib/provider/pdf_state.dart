import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

part 'pdf_state.freezed.dart';


@freezed
class PdfState with _$PdfState {
  const PdfState._();
  
  const factory PdfState.initial() = _InitialPdfState;
  const factory PdfState.showPdf(SfPdfViewer viewer) = _ShowPdfState;
  const factory PdfState.listPdfs(List<File> pdfs) = _ListPdfsState;
  const factory PdfState.error(List<String> errors) = _ErrorPdfState;

}
