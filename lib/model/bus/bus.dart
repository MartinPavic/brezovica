import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'bus.freezed.dart';
part 'bus.g.dart';

@freezed
class Bus with _$Bus {
  static String contentType = 'bus';
  @HiveType(typeId: 0, adapterName: 'BusAdapter')
  const factory Bus(
      {@HiveField(0) required int number,
      @HiveField(1) required String name,
      @HiveField(2) required String pdfUrl,
      @HiveField(3) String? fileUrl}) = _Bus;

  factory Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);
}
