import 'dart:io';

import 'package:brezovica/model/content_type.dart';
import 'package:brezovica/util/files.dart';
import 'package:deep_pick/src/pick.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bus.freezed.dart';
part 'bus.g.dart';

@freezed
class Bus with _$Bus {
  const factory Bus(
      {required int number,
      required BusType type,
      required Uri url,
      String? pdfFilePath}) = _Bus;
  factory Bus.empty() => Bus(number: 0, type: const BusType.empty(), url: Uri());
  factory Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);
  static Either<String, Bus> fromPdf(Uri pdfFileUri, List<Bus> buses) {
    return Either.tryCatch(() {
      final fileName = stripFileNameExtension(pdfFileUri.pathSegments.last);
      final busNumber = int.parse(fileName);
      return buses.firstWhere((element) => element.number == busNumber).copyWith(pdfFilePath: pdfFileUri.path);
    }, (e, _) => e.toString());
  }

  
}

@freezed
class BusType with _$BusType {
  const factory BusType.brezovica({required String description}) =
      BrezovicaBusType;
  const factory BusType.obrez({required String description}) = ObrezBusType;
  const factory BusType.botinec({required String description}) = BotinecBusType;
  const factory BusType.empty({@Default('') String description}) = EmptyBusType;
  factory BusType.fromJson(Map<String, dynamic> json) =>
      _$BusTypeFromJson(json);
}
