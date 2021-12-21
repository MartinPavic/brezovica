import 'dart:io';

import 'package:brezovica/util/files.dart';
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
  factory Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);
  static Either<String, Bus> fromPdf(File pdfFile, List<Bus> buses) {
    return Either.tryCatch(() {
      final fileName = stripFileNameExtension(pdfFile.uri.pathSegments.last);
      final busNumber = int.parse(fileName);
      return buses.firstWhere((element) => element.number == busNumber);
    }, (e, _) => e.toString());
  }
}

@freezed
class BusType with _$BusType {
  const factory BusType.brezovica({required String description}) =
      BrezovicaBusType;
  const factory BusType.obrez({required String description}) = ObrezBusType;
  const factory BusType.botinec({required String description}) = BotinecBusType;
  factory BusType.fromJson(Map<String, dynamic> json) =>
      _$BusTypeFromJson(json);
}
