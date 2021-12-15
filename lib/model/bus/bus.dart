import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bus.freezed.dart';
part 'bus.g.dart';

/// Different request status when making API request.
///
/// Each status maps to a different UI.
@freezed
class Bus with _$Bus {
  const factory Bus({required int number, required BusType type}) = _Bus;
  factory Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);
}

@freezed
class BusType with _$BusType {
  const factory BusType.brezovica({required String description}) = BrezovicaBusType;
  const factory BusType.obrez({required String description}) = ObrezBusType;
  const factory BusType.botinec({required String description}) = BotinecBusType;
  factory BusType.fromJson(Map<String, dynamic> json) => _$BusTypeFromJson(json);
}
