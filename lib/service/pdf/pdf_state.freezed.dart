// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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

  _PdfState call({required List<Uri> pdfs, List<String> errors = const []}) {
    return _PdfState(
      pdfs: pdfs,
      errors: errors,
    );
  }
}

/// @nodoc
const $PdfState = _$PdfStateTearOff();

/// @nodoc
mixin _$PdfState {
  List<Uri> get pdfs => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PdfStateCopyWith<PdfState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfStateCopyWith<$Res> {
  factory $PdfStateCopyWith(PdfState value, $Res Function(PdfState) then) =
      _$PdfStateCopyWithImpl<$Res>;
  $Res call({List<Uri> pdfs, List<String> errors});
}

/// @nodoc
class _$PdfStateCopyWithImpl<$Res> implements $PdfStateCopyWith<$Res> {
  _$PdfStateCopyWithImpl(this._value, this._then);

  final PdfState _value;
  // ignore: unused_field
  final $Res Function(PdfState) _then;

  @override
  $Res call({
    Object? pdfs = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      pdfs: pdfs == freezed
          ? _value.pdfs
          : pdfs // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PdfStateCopyWith<$Res> implements $PdfStateCopyWith<$Res> {
  factory _$PdfStateCopyWith(_PdfState value, $Res Function(_PdfState) then) =
      __$PdfStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Uri> pdfs, List<String> errors});
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
    Object? pdfs = freezed,
    Object? errors = freezed,
  }) {
    return _then(_PdfState(
      pdfs: pdfs == freezed
          ? _value.pdfs
          : pdfs // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_PdfState implements _PdfState {
  const _$_PdfState({required this.pdfs, this.errors = const []});

  @override
  final List<Uri> pdfs;
  @JsonKey()
  @override
  final List<String> errors;

  @override
  String toString() {
    return 'PdfState(pdfs: $pdfs, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PdfState &&
            const DeepCollectionEquality().equals(other.pdfs, pdfs) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pdfs),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$PdfStateCopyWith<_PdfState> get copyWith =>
      __$PdfStateCopyWithImpl<_PdfState>(this, _$identity);
}

abstract class _PdfState implements PdfState {
  const factory _PdfState({required List<Uri> pdfs, List<String> errors}) =
      _$_PdfState;

  @override
  List<Uri> get pdfs;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$PdfStateCopyWith<_PdfState> get copyWith =>
      throw _privateConstructorUsedError;
}
