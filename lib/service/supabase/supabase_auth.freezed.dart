// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supabase_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthDataTearOff {
  const _$AuthDataTearOff();

  _AuthData call(
      {Option<String> email = const None(),
      Option<String> phoneNumber = const None(),
      required String password}) {
    return _AuthData(
      email: email,
      phoneNumber: phoneNumber,
      password: password,
    );
  }
}

/// @nodoc
const $AuthData = _$AuthDataTearOff();

/// @nodoc
mixin _$AuthData {
  Option<String> get email => throw _privateConstructorUsedError;
  Option<String> get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthDataCopyWith<AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res>;
  $Res call(
      {Option<String> email, Option<String> phoneNumber, String password});
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res> implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  final AuthData _value;
  // ignore: unused_field
  final $Res Function(AuthData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$AuthDataCopyWith(_AuthData value, $Res Function(_AuthData) then) =
      __$AuthDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<String> email, Option<String> phoneNumber, String password});
}

/// @nodoc
class __$AuthDataCopyWithImpl<$Res> extends _$AuthDataCopyWithImpl<$Res>
    implements _$AuthDataCopyWith<$Res> {
  __$AuthDataCopyWithImpl(_AuthData _value, $Res Function(_AuthData) _then)
      : super(_value, (v) => _then(v as _AuthData));

  @override
  _AuthData get _value => super._value as _AuthData;

  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_AuthData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthData with DiagnosticableTreeMixin implements _AuthData {
  const _$_AuthData(
      {this.email = const None(),
      this.phoneNumber = const None(),
      required this.password});

  @JsonKey()
  @override
  final Option<String> email;
  @JsonKey()
  @override
  final Option<String> phoneNumber;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthData(email: $email, phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthData'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthData &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$AuthDataCopyWith<_AuthData> get copyWith =>
      __$AuthDataCopyWithImpl<_AuthData>(this, _$identity);
}

abstract class _AuthData implements AuthData {
  const factory _AuthData(
      {Option<String> email,
      Option<String> phoneNumber,
      required String password}) = _$_AuthData;

  @override
  Option<String> get email;
  @override
  Option<String> get phoneNumber;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$AuthDataCopyWith<_AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
