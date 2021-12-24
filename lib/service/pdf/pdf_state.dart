import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
part 'pdf_state.freezed.dart';

@freezed
class PdfState with _$PdfState {
  const factory PdfState({required List<Uri> pdfs, @Default([]) List<String> errors}) = _PdfState;

  factory PdfState.initial() => const PdfState(pdfs: []);
  factory PdfState.downloadedPdfs(List<Uri> pdfs) => PdfState(pdfs: pdfs);
  factory PdfState.error(PdfState previousState, String error) => previousState.copyWith(errors: previousState.errors.append(error).toList());
}
