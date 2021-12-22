import 'dart:io';

import 'package:brezovica/util/files.dart';
import 'package:fpdart/fpdart.dart';

TaskEither<String, List<File>> getBusPdfs() {
  return getDownloadDir().map((downloadDir) =>
      downloadDir.listSync().map((e) => File(e.path)).toList());
}
