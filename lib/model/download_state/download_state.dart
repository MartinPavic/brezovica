import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_state.freezed.dart';


@freezed
class DownloadState<T> with _$DownloadState {
  const DownloadState._();

  const factory DownloadState.notDownloading() = _NotDownloadingState;
  const factory DownloadState.downloading() = _DownloadingState;
  const factory DownloadState.downloadSuccess(T result) = _DownloadSuccessState;
  const factory DownloadState.downloadFailure(String error) = _DownloadFailuerState;

}