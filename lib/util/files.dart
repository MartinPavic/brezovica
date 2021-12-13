import 'dart:io';

import 'package:brezovica/util/error.dart';
import 'package:flowder/flowder.dart';
import 'package:fpdart/fpdart.dart';
import 'package:path_provider/path_provider.dart';

class Files {
  static TaskEither<String, File> downloadFile(
      String url, DownloaderUtils options) {
    return TaskEither.tryCatch(() async {
      await Flowder.download(url, options);
      return options.file;
    }, (e, _) => e.toString());
  }

  static TaskEither<String, List<File>> getBusPdfs() {
    return TaskEither.tryCatch(() async {
      final appDir = await getApplicationDocumentsDirectory();
      final downloadDir =
          Directory(appDir.path + Platform.pathSeparator + 'download');
      return downloadDir.listSync().map((e) => File(e.path)).toList();
    }, (e, _) => e.toString());
  }

  static String getNameFromPath(String path) {
    final name = path.substring(path.length - 7, path.length - 4);
    return name;
  }
}
