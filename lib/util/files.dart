import 'dart:io';

import 'package:brezovica/util/error.dart';
import 'package:flowder/flowder.dart';
import 'package:fpdart/fpdart.dart';
import 'package:path_provider/path_provider.dart';

class Files {
  static TaskEither<String, Directory> getDownloadDir() {
    return TaskEither.tryCatch(() async {
      final appDir = await getApplicationDocumentsDirectory();
      final downloadDir =
          Directory(appDir.path + Platform.pathSeparator + 'download');
      downloadDir.createSync();
      return downloadDir;
    }, (e, _) => e.toString());
  }

  static TaskEither<String, DownloaderCore> downloadFile(
      String url, DownloaderUtils options) {
    return TaskEither.tryCatch(() async {
      return await Flowder.download(url, options);
    }, (e, _) => e.toString());
  }

  static TaskEither<String, List<File>> getBusPdfs() {
    return getDownloadDir().map((downloadDir) =>
        downloadDir.listSync().map((e) => File(e.path)).toList());
  }

  static String getNameFromPath(String path) {
    final name = path.substring(path.length - 7, path.length - 4);
    return name;
  }
}
