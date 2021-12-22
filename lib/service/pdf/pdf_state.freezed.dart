// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pdf_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PdfStateTearOff {
  const _$PdfStateTearOff();

  _InitialPdfState initial() {
    return const _InitialPdfState();
  }

  _ListPdfsState downloadedPdfs(List<File> pdfs) {
    return _ListPdfsState(
      pdfs,
    );
  }

  _ErrorPdfState error(List<String> errors) {
    return _ErrorPdfState(
      errors,
    );
  }
}

/// @nodoc
const $PdfState = _$PdfStateTearOff();

/// @nodoc
mixin _$PdfState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> pdfs) downloadedPdfs,
    required TResult Function(List<String> errors) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> pdfs)? downloadedPdfs,
    TResult Function(List<String> errors)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> pdfs)? downloadedPdfs,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPdfState value) initial,
    required TResult Function(_ListPdfsState value) downloadedPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ListPdfsState value)? downloadedPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ListPdfsState value)? downloadedPdfs,
    TResult Function(_ErrorPdfState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfStateCopyWith<$Res> {
  factory $PdfStateCopyWith(PdfState value, $Res Function(PdfState) then) =
      _$PdfStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PdfStateCopyWithImpl<$Res> implements $PdfStateCopyWith<$Res> {
  _$PdfStateCopyWithImpl(this._value, this._then);

  final PdfState _value;
  // ignore: unused_field
  final $Res Function(PdfState) _then;
}

/// @nodoc
abstract class _$InitialPdfStateCopyWith<$Res> {
  factory _$InitialPdfStateCopyWith(
          _InitialPdfState value, $Res Function(_InitialPdfState) then) =
      __$InitialPdfStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialPdfStateCopyWithImpl<$Res> extends _$PdfStateCopyWithImpl<$Res>
    implements _$InitialPdfStateCopyWith<$Res> {
  __$InitialPdfStateCopyWithImpl(
      _InitialPdfState _value, $Res Function(_InitialPdfState) _then)
      : super(_value, (v) => _then(v as _InitialPdfState));

  @override
  _InitialPdfState get _value => super._value as _InitialPdfState;
}

/// @nodoc

class _$_InitialPdfState extends _InitialPdfState {
  const _$_InitialPdfState() : super._();

  @override
  String toString() {
    return 'PdfState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialPdfState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> pdfs) downloadedPdfs,
    required TResult Function(List<String> errors) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> pdfs)? downloadedPdfs,
    TResult Function(List<String> errors)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> pdfs)? downloadedPdfs,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPdfState value) initial,
    required TResult Function(_ListPdfsState value) downloadedPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ListPdfsState value)? downloadedPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ListPdfsState value)? downloadedPdfs,
    TResult Function(_ErrorPdfState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPdfState extends PdfState {
  const factory _InitialPdfState() = _$_InitialPdfState;
  const _InitialPdfState._() : super._();
}

/// @nodoc
abstract class _$ListPdfsStateCopyWith<$Res> {
  factory _$ListPdfsStateCopyWith(
          _ListPdfsState value, $Res Function(_ListPdfsState) then) =
      __$ListPdfsStateCopyWithImpl<$Res>;
  $Res call({List<File> pdfs});
}

/// @nodoc
class __$ListPdfsStateCopyWithImpl<$Res> extends _$PdfStateCopyWithImpl<$Res>
    implements _$ListPdfsStateCopyWith<$Res> {
  __$ListPdfsStateCopyWithImpl(
      _ListPdfsState _value, $Res Function(_ListPdfsState) _then)
      : super(_value, (v) => _then(v as _ListPdfsState));

  @override
  _ListPdfsState get _value => super._value as _ListPdfsState;

  @override
  $Res call({
    Object? pdfs = freezed,
  }) {
    return _then(_ListPdfsState(
      pdfs == freezed
          ? _value.pdfs
          : pdfs // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$_ListPdfsState extends _ListPdfsState {
  const _$_ListPdfsState(this.pdfs) : super._();

  @override
  final List<File> pdfs;

  @override
  String toString() {
    return 'PdfState.downloadedPdfs(pdfs: $pdfs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListPdfsState &&
            const DeepCollectionEquality().equals(other.pdfs, pdfs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pdfs));

  @JsonKey(ignore: true)
  @override
  _$ListPdfsStateCopyWith<_ListPdfsState> get copyWith =>
      __$ListPdfsStateCopyWithImpl<_ListPdfsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> pdfs) downloadedPdfs,
    required TResult Function(List<String> errors) error,
  }) {
    return downloadedPdfs(pdfs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> pdfs)? downloadedPdfs,
    TResult Function(List<String> errors)? error,
  }) {
    return downloadedPdfs?.call(pdfs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> pdfs)? downloadedPdfs,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) {
    if (downloadedPdfs != null) {
      return downloadedPdfs(pdfs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPdfState value) initial,
    required TResult Function(_ListPdfsState value) downloadedPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) {
    return downloadedPdfs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ListPdfsState value)? downloadedPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) {
    return downloadedPdfs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ListPdfsState value)? downloadedPdfs,
    TResult Function(_ErrorPdfState value)? error,
    required TResult orElse(),
  }) {
    if (downloadedPdfs != null) {
      return downloadedPdfs(this);
    }
    return orElse();
  }
}

abstract class _ListPdfsState extends PdfState {
  const factory _ListPdfsState(List<File> pdfs) = _$_ListPdfsState;
  const _ListPdfsState._() : super._();

  List<File> get pdfs;
  @JsonKey(ignore: true)
  _$ListPdfsStateCopyWith<_ListPdfsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorPdfStateCopyWith<$Res> {
  factory _$ErrorPdfStateCopyWith(
          _ErrorPdfState value, $Res Function(_ErrorPdfState) then) =
      __$ErrorPdfStateCopyWithImpl<$Res>;
  $Res call({List<String> errors});
}

/// @nodoc
class __$ErrorPdfStateCopyWithImpl<$Res> extends _$PdfStateCopyWithImpl<$Res>
    implements _$ErrorPdfStateCopyWith<$Res> {
  __$ErrorPdfStateCopyWithImpl(
      _ErrorPdfState _value, $Res Function(_ErrorPdfState) _then)
      : super(_value, (v) => _then(v as _ErrorPdfState));

  @override
  _ErrorPdfState get _value => super._value as _ErrorPdfState;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_ErrorPdfState(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ErrorPdfState extends _ErrorPdfState {
  const _$_ErrorPdfState(this.errors) : super._();

  @override
  final List<String> errors;

  @override
  String toString() {
    return 'PdfState.error(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorPdfState &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$ErrorPdfStateCopyWith<_ErrorPdfState> get copyWith =>
      __$ErrorPdfStateCopyWithImpl<_ErrorPdfState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<File> pdfs) downloadedPdfs,
    required TResult Function(List<String> errors) error,
  }) {
    return error(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> pdfs)? downloadedPdfs,
    TResult Function(List<String> errors)? error,
  }) {
    return error?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<File> pdfs)? downloadedPdfs,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPdfState value) initial,
    required TResult Function(_ListPdfsState value) downloadedPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ListPdfsState value)? downloadedPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ListPdfsState value)? downloadedPdfs,
    TResult Function(_ErrorPdfState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPdfState extends PdfState {
  const factory _ErrorPdfState(List<String> errors) = _$_ErrorPdfState;
  const _ErrorPdfState._() : super._();

  List<String> get errors;
  @JsonKey(ignore: true)
  _$ErrorPdfStateCopyWith<_ErrorPdfState> get copyWith =>
      throw _privateConstructorUsedError;
}
