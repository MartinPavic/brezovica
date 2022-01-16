import 'package:brezovica/model/content_type.dart';
import 'package:brezovica/util/files.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bus.freezed.dart';
part 'bus.g.dart';

@freezed
class Bus with _$Bus {
  static const contentType = 'bus';

  const factory Bus(
      {required int number, required String name, String? pdfFilePath}) = _Bus;

  factory Bus.empty() => const Bus(number: 0, name: '');
  factory Bus.fromJson(Map<String, dynamic> json) => _$BusFromJson(json);
  static Either<String, Bus> fromPdf(Uri pdfFileUri, List<Bus> buses) {
    return Either.tryCatch(() {
      final fileName = stripFileNameExtension(pdfFileUri.pathSegments.last);
      final busNumber = int.parse(fileName);
      return buses
          .firstWhere((element) => element.number == busNumber)
          .copyWith(pdfFilePath: pdfFileUri.path);
    }, (e, _) => e.toString());
  }

  factory Bus.fromPick(RequiredPick pick) => Bus(
        number: pick('number').asIntOrThrow(),
        name: pick('name').asStringOrThrow(),
        pdfFilePath: pick('pdf').asStringOrNull(),
      );
}
