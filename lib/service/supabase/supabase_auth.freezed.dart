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
class _$SignInDataTearOff {
  const _$SignInDataTearOff();

  _SignInData call({required String email, required String password}) {
    return _SignInData(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $SignInData = _$SignInDataTearOff();

/// @nodoc
mixin _$SignInData {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInDataCopyWith<SignInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDataCopyWith<$Res> {
  factory $SignInDataCopyWith(
          SignInData value, $Res Function(SignInData) then) =
      _$SignInDataCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInDataCopyWithImpl<$Res> implements $SignInDataCopyWith<$Res> {
  _$SignInDataCopyWithImpl(this._value, this._then);

  final SignInData _value;
  // ignore: unused_field
  final $Res Function(SignInData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInDataCopyWith<$Res> implements $SignInDataCopyWith<$Res> {
  factory _$SignInDataCopyWith(
          _SignInData value, $Res Function(_SignInData) then) =
      __$SignInDataCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$SignInDataCopyWithImpl<$Res> extends _$SignInDataCopyWithImpl<$Res>
    implements _$SignInDataCopyWith<$Res> {
  __$SignInDataCopyWithImpl(
      _SignInData _value, $Res Function(_SignInData) _then)
      : super(_value, (v) => _then(v as _SignInData));

  @override
  _SignInData get _value => super._value as _SignInData;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInData implements _SignInData {
  const _$_SignInData({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInData(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInData &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignInDataCopyWith<_SignInData> get copyWith =>
      __$SignInDataCopyWithImpl<_SignInData>(this, _$identity);
}

abstract class _SignInData implements SignInData {
  const factory _SignInData({required String email, required String password}) =
      _$_SignInData;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$SignInDataCopyWith<_SignInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignUpDataTearOff {
  const _$SignUpDataTearOff();

  _SignUpData call({required String email, required String password}) {
    return _SignUpData(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $SignUpData = _$SignUpDataTearOff();

/// @nodoc
mixin _$SignUpData {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpDataCopyWith<SignUpData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDataCopyWith<$Res> {
  factory $SignUpDataCopyWith(
          SignUpData value, $Res Function(SignUpData) then) =
      _$SignUpDataCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignUpDataCopyWithImpl<$Res> implements $SignUpDataCopyWith<$Res> {
  _$SignUpDataCopyWithImpl(this._value, this._then);

  final SignUpData _value;
  // ignore: unused_field
  final $Res Function(SignUpData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignUpDataCopyWith<$Res> implements $SignUpDataCopyWith<$Res> {
  factory _$SignUpDataCopyWith(
          _SignUpData value, $Res Function(_SignUpData) then) =
      __$SignUpDataCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$SignUpDataCopyWithImpl<$Res> extends _$SignUpDataCopyWithImpl<$Res>
    implements _$SignUpDataCopyWith<$Res> {
  __$SignUpDataCopyWithImpl(
      _SignUpData _value, $Res Function(_SignUpData) _then)
      : super(_value, (v) => _then(v as _SignUpData));

  @override
  _SignUpData get _value => super._value as _SignUpData;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignUpData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpData implements _SignUpData {
  const _$_SignUpData({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpData(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpData &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignUpDataCopyWith<_SignUpData> get copyWith =>
      __$SignUpDataCopyWithImpl<_SignUpData>(this, _$identity);
}

abstract class _SignUpData implements SignUpData {
  const factory _SignUpData({required String email, required String password}) =
      _$_SignUpData;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$SignUpDataCopyWith<_SignUpData> get copyWith =>
      throw _privateConstructorUsedError;
}
