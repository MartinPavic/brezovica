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

  _PdfState call({required int pdfCount, required List<File> pdfs}) {
    return _PdfState(
      pdfCount: pdfCount,
      pdfs: pdfs,
    );
  }
}

/// @nodoc
const $PdfState = _$PdfStateTearOff();

/// @nodoc
mixin _$PdfState {
  int get pdfCount => throw _privateConstructorUsedError;
  List<File> get pdfs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PdfStateCopyWith<PdfState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfStateCopyWith<$Res> {
  factory $PdfStateCopyWith(PdfState value, $Res Function(PdfState) then) =
      _$PdfStateCopyWithImpl<$Res>;
  $Res call({int pdfCount, List<File> pdfs});
}

/// @nodoc
class _$PdfStateCopyWithImpl<$Res> implements $PdfStateCopyWith<$Res> {
  _$PdfStateCopyWithImpl(this._value, this._then);

  final PdfState _value;
  // ignore: unused_field
  final $Res Function(PdfState) _then;

  @override
  $Res call({
    Object? pdfCount = freezed,
    Object? pdfs = freezed,
  }) {
    return _then(_value.copyWith(
      pdfCount: pdfCount == freezed
          ? _value.pdfCount
          : pdfCount // ignore: cast_nullable_to_non_nullable
              as int,
      pdfs: pdfs == freezed
          ? _value.pdfs
          : pdfs // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
abstract class _$PdfStateCopyWith<$Res> implements $PdfStateCopyWith<$Res> {
  factory _$PdfStateCopyWith(_PdfState value, $Res Function(_PdfState) then) =
      __$PdfStateCopyWithImpl<$Res>;
  @override
  $Res call({int pdfCount, List<File> pdfs});
}

/// @nodoc
class __$PdfStateCopyWithImpl<$Res> extends _$PdfStateCopyWithImpl<$Res>
    implements _$PdfStateCopyWith<$Res> {
  __$PdfStateCopyWithImpl(_PdfState _value, $Res Function(_PdfState) _then)
      : super(_value, (v) => _then(v as _PdfState));

  @override
  _PdfState get _value => super._value as _PdfState;

  @override
  $Res call({
    Object? pdfCount = freezed,
    Object? pdfs = freezed,
  }) {
    return _then(_PdfState(
      pdfCount: pdfCount == freezed
          ? _value.pdfCount
          : pdfCount // ignore: cast_nullable_to_non_nullable
              as int,
      pdfs: pdfs == freezed
          ? _value.pdfs
          : pdfs // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$_PdfState implements _PdfState {
  const _$_PdfState({required this.pdfCount, required this.pdfs});

  @override
  final int pdfCount;
  @override
  final List<File> pdfs;

  @override
  String toString() {
    return 'PdfState(pdfCount: $pdfCount, pdfs: $pdfs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PdfState &&
            const DeepCollectionEquality().equals(other.pdfCount, pdfCount) &&
            const DeepCollectionEquality().equals(other.pdfs, pdfs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pdfCount),
      const DeepCollectionEquality().hash(pdfs));

  @JsonKey(ignore: true)
  @override
  _$PdfStateCopyWith<_PdfState> get copyWith =>
      __$PdfStateCopyWithImpl<_PdfState>(this, _$identity);
}

abstract class _PdfState implements PdfState {
  const factory _PdfState({required int pdfCount, required List<File> pdfs}) =
      _$_PdfState;

  @override
  int get pdfCount;
  @override
  List<File> get pdfs;
  @override
  @JsonKey(ignore: true)
  _$PdfStateCopyWith<_PdfState> get copyWith =>
      throw _privateConstructorUsedError;
}
