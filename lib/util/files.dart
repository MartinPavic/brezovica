import 'dart:io';

import 'package:flowder/flowder.dart';
import 'package:fpdart/fpdart.dart';
import 'package:path_provider/path_provider.dart';

TaskEither<String, Directory> getDownloadDir() {
  return TaskEither.tryCatch(() async {
    final appDir = await getApplicationDocumentsDirectory();
    final downloadDir =
        Directory(appDir.path + Platform.pathSeparator + 'download');
    downloadDir.createSync();
    return downloadDir;
  }, (e, _) => e.toString());
}

TaskEither<String, DownloaderCore> downloadFile(
    String url, DownloaderUtils options) {
  return TaskEither.tryCatch(() async {
    return await Flowder.download(url, options);
  }, (e, _) => e.toString());
}

String stripFileNameExtension(String fileName) {
  return fileName.split('.')[0];
}

String getFileName(Uri fileUri) {
  return stripFileNameExtension(fileUri.pathSegments.last);
}
