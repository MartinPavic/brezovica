import 'dart:io';

import 'package:flowder/flowder.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_state.freezed.dart';


@freezed
class DownloadState with _$DownloadState {
  const DownloadState._();

  const factory DownloadState.notDownloading() = _NotDownloadingState;
  const factory DownloadState.downloading(DownloaderCore downloader) = _DownloadingState;
  const factory DownloadState.downloadSuccess(File file) = _DownloadSuccessState;
  const factory DownloadState.downloadFailure(String error) = _DownloadFailuerState;

}