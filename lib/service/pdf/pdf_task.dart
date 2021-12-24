import 'package:brezovica/util/files.dart';
import 'package:fpdart/fpdart.dart';

TaskEither<String, List<Uri>> getBusPdfs() {
  return getDownloadDir().map((downloadDir) =>
      downloadDir.listSync().map((e) => e.uri).toList());
}
