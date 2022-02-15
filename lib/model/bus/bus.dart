import 'package:freezed_annotation/freezed_annotation.dart';

part 'bus.freezed.dart';
part 'bus.g.dart';

@freezed
class Bus with _$Bus {
  static String contentType = 'bus';

  const factory Bus({
    required int number,
    required String name,
  }) = _Bus;

  factory Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);
}
