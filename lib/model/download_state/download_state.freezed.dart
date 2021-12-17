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

  _NotDownloadingState<T> notDownloading<T>() {
    return _NotDownloadingState<T>();
  }

  _DownloadingState<T> downloading<T>() {
    return _DownloadingState<T>();
  }

  _DownloadSuccessState<T> downloadSuccess<T>(T result) {
    return _DownloadSuccessState<T>(
      result,
    );
  }

  _DownloadFailuerState<T> downloadFailure<T>(String error) {
    return _DownloadFailuerState<T>(
      error,
    );
  }
}

/// @nodoc
const $DownloadState = _$DownloadStateTearOff();

/// @nodoc
mixin _$DownloadState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function() downloading,
    required TResult Function(T result) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDownloadingState<T> value) notDownloading,
    required TResult Function(_DownloadingState<T> value) downloading,
    required TResult Function(_DownloadSuccessState<T> value) downloadSuccess,
    required TResult Function(_DownloadFailuerState<T> value) downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<T, $Res> {
  factory $DownloadStateCopyWith(
          DownloadState<T> value, $Res Function(DownloadState<T>) then) =
      _$DownloadStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<T, $Res>
    implements $DownloadStateCopyWith<T, $Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  final DownloadState<T> _value;
  // ignore: unused_field
  final $Res Function(DownloadState<T>) _then;
}

/// @nodoc
abstract class _$NotDownloadingStateCopyWith<T, $Res> {
  factory _$NotDownloadingStateCopyWith(_NotDownloadingState<T> value,
          $Res Function(_NotDownloadingState<T>) then) =
      __$NotDownloadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$NotDownloadingStateCopyWithImpl<T, $Res>
    extends _$DownloadStateCopyWithImpl<T, $Res>
    implements _$NotDownloadingStateCopyWith<T, $Res> {
  __$NotDownloadingStateCopyWithImpl(_NotDownloadingState<T> _value,
      $Res Function(_NotDownloadingState<T>) _then)
      : super(_value, (v) => _then(v as _NotDownloadingState<T>));

  @override
  _NotDownloadingState<T> get _value => super._value as _NotDownloadingState<T>;
}

/// @nodoc

class _$_NotDownloadingState<T> extends _NotDownloadingState<T>
    with DiagnosticableTreeMixin {
  const _$_NotDownloadingState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadState<$T>.notDownloading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadState<$T>.notDownloading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotDownloadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function() downloading,
    required TResult Function(T result) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) {
    return notDownloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) {
    return notDownloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
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
    required TResult Function(_NotDownloadingState<T> value) notDownloading,
    required TResult Function(_DownloadingState<T> value) downloading,
    required TResult Function(_DownloadSuccessState<T> value) downloadSuccess,
    required TResult Function(_DownloadFailuerState<T> value) downloadFailure,
  }) {
    return notDownloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
  }) {
    return notDownloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (notDownloading != null) {
      return notDownloading(this);
    }
    return orElse();
  }
}

abstract class _NotDownloadingState<T> extends DownloadState<T> {
  const factory _NotDownloadingState() = _$_NotDownloadingState<T>;
  const _NotDownloadingState._() : super._();
}

/// @nodoc
abstract class _$DownloadingStateCopyWith<T, $Res> {
  factory _$DownloadingStateCopyWith(_DownloadingState<T> value,
          $Res Function(_DownloadingState<T>) then) =
      __$DownloadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$DownloadingStateCopyWithImpl<T, $Res>
    extends _$DownloadStateCopyWithImpl<T, $Res>
    implements _$DownloadingStateCopyWith<T, $Res> {
  __$DownloadingStateCopyWithImpl(
      _DownloadingState<T> _value, $Res Function(_DownloadingState<T>) _then)
      : super(_value, (v) => _then(v as _DownloadingState<T>));

  @override
  _DownloadingState<T> get _value => super._value as _DownloadingState<T>;
}

/// @nodoc

class _$_DownloadingState<T> extends _DownloadingState<T>
    with DiagnosticableTreeMixin {
  const _$_DownloadingState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadState<$T>.downloading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadState<$T>.downloading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DownloadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function() downloading,
    required TResult Function(T result) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) {
    return downloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) {
    return downloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDownloadingState<T> value) notDownloading,
    required TResult Function(_DownloadingState<T> value) downloading,
    required TResult Function(_DownloadSuccessState<T> value) downloadSuccess,
    required TResult Function(_DownloadFailuerState<T> value) downloadFailure,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _DownloadingState<T> extends DownloadState<T> {
  const factory _DownloadingState() = _$_DownloadingState<T>;
  const _DownloadingState._() : super._();
}

/// @nodoc
abstract class _$DownloadSuccessStateCopyWith<T, $Res> {
  factory _$DownloadSuccessStateCopyWith(_DownloadSuccessState<T> value,
          $Res Function(_DownloadSuccessState<T>) then) =
      __$DownloadSuccessStateCopyWithImpl<T, $Res>;
  $Res call({T result});
}

/// @nodoc
class __$DownloadSuccessStateCopyWithImpl<T, $Res>
    extends _$DownloadStateCopyWithImpl<T, $Res>
    implements _$DownloadSuccessStateCopyWith<T, $Res> {
  __$DownloadSuccessStateCopyWithImpl(_DownloadSuccessState<T> _value,
      $Res Function(_DownloadSuccessState<T>) _then)
      : super(_value, (v) => _then(v as _DownloadSuccessState<T>));

  @override
  _DownloadSuccessState<T> get _value =>
      super._value as _DownloadSuccessState<T>;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_DownloadSuccessState<T>(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_DownloadSuccessState<T> extends _DownloadSuccessState<T>
    with DiagnosticableTreeMixin {
  const _$_DownloadSuccessState(this.result) : super._();

  @override
  final T result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadState<$T>.downloadSuccess(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadState<$T>.downloadSuccess'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadSuccessState<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$DownloadSuccessStateCopyWith<T, _DownloadSuccessState<T>> get copyWith =>
      __$DownloadSuccessStateCopyWithImpl<T, _DownloadSuccessState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function() downloading,
    required TResult Function(T result) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) {
    return downloadSuccess(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) {
    return downloadSuccess?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDownloadingState<T> value) notDownloading,
    required TResult Function(_DownloadingState<T> value) downloading,
    required TResult Function(_DownloadSuccessState<T> value) downloadSuccess,
    required TResult Function(_DownloadFailuerState<T> value) downloadFailure,
  }) {
    return downloadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
  }) {
    return downloadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DownloadSuccessState<T> extends DownloadState<T> {
  const factory _DownloadSuccessState(T result) = _$_DownloadSuccessState<T>;
  const _DownloadSuccessState._() : super._();

  T get result;
  @JsonKey(ignore: true)
  _$DownloadSuccessStateCopyWith<T, _DownloadSuccessState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DownloadFailuerStateCopyWith<T, $Res> {
  factory _$DownloadFailuerStateCopyWith(_DownloadFailuerState<T> value,
          $Res Function(_DownloadFailuerState<T>) then) =
      __$DownloadFailuerStateCopyWithImpl<T, $Res>;
  $Res call({String error});
}

/// @nodoc
class __$DownloadFailuerStateCopyWithImpl<T, $Res>
    extends _$DownloadStateCopyWithImpl<T, $Res>
    implements _$DownloadFailuerStateCopyWith<T, $Res> {
  __$DownloadFailuerStateCopyWithImpl(_DownloadFailuerState<T> _value,
      $Res Function(_DownloadFailuerState<T>) _then)
      : super(_value, (v) => _then(v as _DownloadFailuerState<T>));

  @override
  _DownloadFailuerState<T> get _value =>
      super._value as _DownloadFailuerState<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_DownloadFailuerState<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DownloadFailuerState<T> extends _DownloadFailuerState<T>
    with DiagnosticableTreeMixin {
  const _$_DownloadFailuerState(this.error) : super._();

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadState<$T>.downloadFailure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadState<$T>.downloadFailure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadFailuerState<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$DownloadFailuerStateCopyWith<T, _DownloadFailuerState<T>> get copyWith =>
      __$DownloadFailuerStateCopyWithImpl<T, _DownloadFailuerState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDownloading,
    required TResult Function() downloading,
    required TResult Function(T result) downloadSuccess,
    required TResult Function(String error) downloadFailure,
  }) {
    return downloadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
    TResult Function(String error)? downloadFailure,
  }) {
    return downloadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDownloading,
    TResult Function()? downloading,
    TResult Function(T result)? downloadSuccess,
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
    required TResult Function(_NotDownloadingState<T> value) notDownloading,
    required TResult Function(_DownloadingState<T> value) downloading,
    required TResult Function(_DownloadSuccessState<T> value) downloadSuccess,
    required TResult Function(_DownloadFailuerState<T> value) downloadFailure,
  }) {
    return downloadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
  }) {
    return downloadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDownloadingState<T> value)? notDownloading,
    TResult Function(_DownloadingState<T> value)? downloading,
    TResult Function(_DownloadSuccessState<T> value)? downloadSuccess,
    TResult Function(_DownloadFailuerState<T> value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadFailure != null) {
      return downloadFailure(this);
    }
    return orElse();
  }
}

abstract class _DownloadFailuerState<T> extends DownloadState<T> {
  const factory _DownloadFailuerState(String error) =
      _$_DownloadFailuerState<T>;
  const _DownloadFailuerState._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$DownloadFailuerStateCopyWith<T, _DownloadFailuerState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
