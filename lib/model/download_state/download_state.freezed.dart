// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadStateTearOff {
  const _$DownloadStateTearOff();

  _NotDownloadingState notDownloading() {
    return const _NotDownloadingState();
  }

  _DownloadingState downloading(DownloaderCore downloader) {
    return _DownloadingState(
      downloader,
    );
  }

  _DownloadSuccessState downloadSuccess(File file) {
    return _DownloadSuccessState(
      file,
    );
  }

  _DownloadFailuerState downloadFailure(String error) {
    return _DownloadFailuerState(
      error,
    );
  }
}

/// @nodoc
const $DownloadState = _$DownloadStateTearOff();

/// @nodoc
mixin _$DownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function(DownloaderCore downloader) downloading,
    required TResult Function(File file) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDownloadingState value) notDownloading,
    required TResult Function(_DownloadingState value) downloading,
    required TResult Function(_DownloadSuccessState value) downloadSuccess,
    required TResult Function(_DownloadFailuerState value) downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  final DownloadState _value;
  // ignore: unused_field
  final $Res Function(DownloadState) _then;
}

/// @nodoc
abstract class _$NotDownloadingStateCopyWith<$Res> {
  factory _$NotDownloadingStateCopyWith(_NotDownloadingState value,
          $Res Function(_NotDownloadingState) then) =
      __$NotDownloadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotDownloadingStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$NotDownloadingStateCopyWith<$Res> {
  __$NotDownloadingStateCopyWithImpl(
      _NotDownloadingState _value, $Res Function(_NotDownloadingState) _then)
      : super(_value, (v) => _then(v as _NotDownloadingState));

  @override
  _NotDownloadingState get _value => super._value as _NotDownloadingState;
}

/// @nodoc

class _$_NotDownloadingState extends _NotDownloadingState
    with DiagnosticableTreeMixin {
  const _$_NotDownloadingState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadState.notDownloading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadState.notDownloading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotDownloadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function(DownloaderCore downloader) downloading,
    required TResult Function(File file) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) {
    return notDownloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) {
    return notDownloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (notDownloading != null) {
      return notDownloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDownloadingState value) notDownloading,
    required TResult Function(_DownloadingState value) downloading,
    required TResult Function(_DownloadSuccessState value) downloadSuccess,
    required TResult Function(_DownloadFailuerState value) downloadFailure,
  }) {
    return notDownloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
  }) {
    return notDownloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (notDownloading != null) {
      return notDownloading(this);
    }
    return orElse();
  }
}

abstract class _NotDownloadingState extends DownloadState {
  const factory _NotDownloadingState() = _$_NotDownloadingState;
  const _NotDownloadingState._() : super._();
}

/// @nodoc
abstract class _$DownloadingStateCopyWith<$Res> {
  factory _$DownloadingStateCopyWith(
          _DownloadingState value, $Res Function(_DownloadingState) then) =
      __$DownloadingStateCopyWithImpl<$Res>;
  $Res call({DownloaderCore downloader});
}

/// @nodoc
class __$DownloadingStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$DownloadingStateCopyWith<$Res> {
  __$DownloadingStateCopyWithImpl(
      _DownloadingState _value, $Res Function(_DownloadingState) _then)
      : super(_value, (v) => _then(v as _DownloadingState));

  @override
  _DownloadingState get _value => super._value as _DownloadingState;

  @override
  $Res call({
    Object? downloader = freezed,
  }) {
    return _then(_DownloadingState(
      downloader == freezed
          ? _value.downloader
          : downloader // ignore: cast_nullable_to_non_nullable
              as DownloaderCore,
    ));
  }
}

/// @nodoc

class _$_DownloadingState extends _DownloadingState
    with DiagnosticableTreeMixin {
  const _$_DownloadingState(this.downloader) : super._();

  @override
  final DownloaderCore downloader;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadState.downloading(downloader: $downloader)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadState.downloading'))
      ..add(DiagnosticsProperty('downloader', downloader));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadingState &&
            const DeepCollectionEquality()
                .equals(other.downloader, downloader));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(downloader));

  @JsonKey(ignore: true)
  @override
  _$DownloadingStateCopyWith<_DownloadingState> get copyWith =>
      __$DownloadingStateCopyWithImpl<_DownloadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function(DownloaderCore downloader) downloading,
    required TResult Function(File file) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) {
    return downloading(downloader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) {
    return downloading?.call(downloader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(downloader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDownloadingState value) notDownloading,
    required TResult Function(_DownloadingState value) downloading,
    required TResult Function(_DownloadSuccessState value) downloadSuccess,
    required TResult Function(_DownloadFailuerState value) downloadFailure,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _DownloadingState extends DownloadState {
  const factory _DownloadingState(DownloaderCore downloader) =
      _$_DownloadingState;
  const _DownloadingState._() : super._();

  DownloaderCore get downloader;
  @JsonKey(ignore: true)
  _$DownloadingStateCopyWith<_DownloadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DownloadSuccessStateCopyWith<$Res> {
  factory _$DownloadSuccessStateCopyWith(_DownloadSuccessState value,
          $Res Function(_DownloadSuccessState) then) =
      __$DownloadSuccessStateCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$DownloadSuccessStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$DownloadSuccessStateCopyWith<$Res> {
  __$DownloadSuccessStateCopyWithImpl(
      _DownloadSuccessState _value, $Res Function(_DownloadSuccessState) _then)
      : super(_value, (v) => _then(v as _DownloadSuccessState));

  @override
  _DownloadSuccessState get _value => super._value as _DownloadSuccessState;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_DownloadSuccessState(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_DownloadSuccessState extends _DownloadSuccessState
    with DiagnosticableTreeMixin {
  const _$_DownloadSuccessState(this.file) : super._();

  @override
  final File file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadState.downloadSuccess(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadState.downloadSuccess'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadSuccessState &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$DownloadSuccessStateCopyWith<_DownloadSuccessState> get copyWith =>
      __$DownloadSuccessStateCopyWithImpl<_DownloadSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function(DownloaderCore downloader) downloading,
    required TResult Function(File file) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) {
    return downloadSuccess(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) {
    return downloadSuccess?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDownloadingState value) notDownloading,
    required TResult Function(_DownloadingState value) downloading,
    required TResult Function(_DownloadSuccessState value) downloadSuccess,
    required TResult Function(_DownloadFailuerState value) downloadFailure,
  }) {
    return downloadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
  }) {
    return downloadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DownloadSuccessState extends DownloadState {
  const factory _DownloadSuccessState(File file) = _$_DownloadSuccessState;
  const _DownloadSuccessState._() : super._();

  File get file;
  @JsonKey(ignore: true)
  _$DownloadSuccessStateCopyWith<_DownloadSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DownloadFailuerStateCopyWith<$Res> {
  factory _$DownloadFailuerStateCopyWith(_DownloadFailuerState value,
          $Res Function(_DownloadFailuerState) then) =
      __$DownloadFailuerStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$DownloadFailuerStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$DownloadFailuerStateCopyWith<$Res> {
  __$DownloadFailuerStateCopyWithImpl(
      _DownloadFailuerState _value, $Res Function(_DownloadFailuerState) _then)
      : super(_value, (v) => _then(v as _DownloadFailuerState));

  @override
  _DownloadFailuerState get _value => super._value as _DownloadFailuerState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_DownloadFailuerState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DownloadFailuerState extends _DownloadFailuerState
    with DiagnosticableTreeMixin {
  const _$_DownloadFailuerState(this.error) : super._();

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadState.downloadFailure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadState.downloadFailure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadFailuerState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$DownloadFailuerStateCopyWith<_DownloadFailuerState> get copyWith =>
      __$DownloadFailuerStateCopyWithImpl<_DownloadFailuerState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function(DownloaderCore downloader) downloading,
    required TResult Function(File file) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) {
    return downloadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) {
    return downloadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function(DownloaderCore downloader)? downloading,
    TResult Function(File file)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadFailure != null) {
      return downloadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDownloadingState value) notDownloading,
    required TResult Function(_DownloadingState value) downloading,
    required TResult Function(_DownloadSuccessState value) downloadSuccess,
    required TResult Function(_DownloadFailuerState value) downloadFailure,
  }) {
    return downloadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
  }) {
    return downloadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState value)? notDownloading,
    TResult Function(_DownloadingState value)? downloading,
    TResult Function(_DownloadSuccessState value)? downloadSuccess,
    TResult Function(_DownloadFailuerState value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadFailure != null) {
      return downloadFailure(this);
    }
    return orElse();
  }
}

abstract class _DownloadFailuerState extends DownloadState {
  const factory _DownloadFailuerState(String error) = _$_DownloadFailuerState;
  const _DownloadFailuerState._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$DownloadFailuerStateCopyWith<_DownloadFailuerState> get copyWith =>
      throw _privateConstructorUsedError;
}
