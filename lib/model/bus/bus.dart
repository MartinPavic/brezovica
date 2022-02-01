import 'package:brezovica/util/files.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bus.freezed.dart';
part 'bus.g.dart';

@freezed
class Bus with _$Bus {
  static String contentType = 'bus';

  const factory Bus(
      {required int number,
      required String name,
      String? pdfFilePath}) = _Bus;

  factory Bus.empty() => const Bus(number: 0, name: '');
  factory Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);
  static Either<String, Bus> fromPdf(Uri pdfFileUri) {
    return Either.tryCatch(() {
      final fileName = getFileName(pdfFileUri);
      final splitFileName = fileName.split("_");
      final busNumber = int.parse(splitFileName[0]);
      final busName = splitFileName[1];
      return Bus(number: busNumber, name: busName, pdfFilePath: pdfFileUri.path);
    }, (e, _) => e.toString());
  }

}
