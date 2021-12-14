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

  _ShowPdfState showPdf(SfPdfViewer viewer) {
    return _ShowPdfState(
      viewer,
    );
  }

  _ListPdfsState listPdfs(List<File> pdfs) {
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
    required TResult Function(SfPdfViewer viewer) showPdf,
    required TResult Function(List<File> pdfs) listPdfs,
    required TResult Function(List<String> errors) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
    TResult Function(List<String> errors)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPdfState value) initial,
    required TResult Function(_ShowPdfState value) showPdf,
    required TResult Function(_ListPdfsState value) listPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
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
    required TResult Function(SfPdfViewer viewer) showPdf,
    required TResult Function(List<File> pdfs) listPdfs,
    required TResult Function(List<String> errors) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
    TResult Function(List<String> errors)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
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
    required TResult Function(_ShowPdfState value) showPdf,
    required TResult Function(_ListPdfsState value) listPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
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
abstract class _$ShowPdfStateCopyWith<$Res> {
  factory _$ShowPdfStateCopyWith(
          _ShowPdfState value, $Res Function(_ShowPdfState) then) =
      __$ShowPdfStateCopyWithImpl<$Res>;
  $Res call({SfPdfViewer viewer});
}

/// @nodoc
class __$ShowPdfStateCopyWithImpl<$Res> extends _$PdfStateCopyWithImpl<$Res>
    implements _$ShowPdfStateCopyWith<$Res> {
  __$ShowPdfStateCopyWithImpl(
      _ShowPdfState _value, $Res Function(_ShowPdfState) _then)
      : super(_value, (v) => _then(v as _ShowPdfState));

  @override
  _ShowPdfState get _value => super._value as _ShowPdfState;

  @override
  $Res call({
    Object? viewer = freezed,
  }) {
    return _then(_ShowPdfState(
      viewer == freezed
          ? _value.viewer
          : viewer // ignore: cast_nullable_to_non_nullable
              as SfPdfViewer,
    ));
  }
}

/// @nodoc

class _$_ShowPdfState extends _ShowPdfState {
  const _$_ShowPdfState(this.viewer) : super._();

  @override
  final SfPdfViewer viewer;

  @override
  String toString() {
    return 'PdfState.showPdf(viewer: $viewer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowPdfState &&
            const DeepCollectionEquality().equals(other.viewer, viewer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(viewer));

  @JsonKey(ignore: true)
  @override
  _$ShowPdfStateCopyWith<_ShowPdfState> get copyWith =>
      __$ShowPdfStateCopyWithImpl<_ShowPdfState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SfPdfViewer viewer) showPdf,
    required TResult Function(List<File> pdfs) listPdfs,
    required TResult Function(List<String> errors) error,
  }) {
    return showPdf(viewer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
    TResult Function(List<String> errors)? error,
  }) {
    return showPdf?.call(viewer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) {
    if (showPdf != null) {
      return showPdf(viewer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPdfState value) initial,
    required TResult Function(_ShowPdfState value) showPdf,
    required TResult Function(_ListPdfsState value) listPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) {
    return showPdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) {
    return showPdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
    TResult Function(_ErrorPdfState value)? error,
    required TResult orElse(),
  }) {
    if (showPdf != null) {
      return showPdf(this);
    }
    return orElse();
  }
}

abstract class _ShowPdfState extends PdfState {
  const factory _ShowPdfState(SfPdfViewer viewer) = _$_ShowPdfState;
  const _ShowPdfState._() : super._();

  SfPdfViewer get viewer;
  @JsonKey(ignore: true)
  _$ShowPdfStateCopyWith<_ShowPdfState> get copyWith =>
      throw _privateConstructorUsedError;
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
    return 'PdfState.listPdfs(pdfs: $pdfs)';
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
    required TResult Function(SfPdfViewer viewer) showPdf,
    required TResult Function(List<File> pdfs) listPdfs,
    required TResult Function(List<String> errors) error,
  }) {
    return listPdfs(pdfs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
    TResult Function(List<String> errors)? error,
  }) {
    return listPdfs?.call(pdfs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) {
    if (listPdfs != null) {
      return listPdfs(pdfs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPdfState value) initial,
    required TResult Function(_ShowPdfState value) showPdf,
    required TResult Function(_ListPdfsState value) listPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) {
    return listPdfs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) {
    return listPdfs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
    TResult Function(_ErrorPdfState value)? error,
    required TResult orElse(),
  }) {
    if (listPdfs != null) {
      return listPdfs(this);
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
    required TResult Function(SfPdfViewer viewer) showPdf,
    required TResult Function(List<File> pdfs) listPdfs,
    required TResult Function(List<String> errors) error,
  }) {
    return error(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
    TResult Function(List<String> errors)? error,
  }) {
    return error?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SfPdfViewer viewer)? showPdf,
    TResult Function(List<File> pdfs)? listPdfs,
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
    required TResult Function(_ShowPdfState value) showPdf,
    required TResult Function(_ListPdfsState value) listPdfs,
    required TResult Function(_ErrorPdfState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
    TResult Function(_ErrorPdfState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPdfState value)? initial,
    TResult Function(_ShowPdfState value)? showPdf,
    TResult Function(_ListPdfsState value)? listPdfs,
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
