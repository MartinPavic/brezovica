// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bus _$BusFromJson(Map<String, dynamic> json) {
  return _Bus.fromJson(json);
}

/// @nodoc
class _$BusTearOff {
  const _$BusTearOff();

  _Bus call(
      {@HiveField(0) required int number,
      @HiveField(1) required String name,
      @HiveField(2) required String pdfUrl,
      @HiveField(3) String? fileUrl}) {
    return _Bus(
      number: number,
      name: name,
      pdfUrl: pdfUrl,
      fileUrl: fileUrl,
    );
  }

  Bus fromJson(Map<String, Object?> json) {
    return Bus.fromJson(json);
  }
}

/// @nodoc
const $Bus = _$BusTearOff();

/// @nodoc
mixin _$Bus {
  @HiveField(0)
  int get number => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get pdfUrl => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get fileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusCopyWith<Bus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusCopyWith<$Res> {
  factory $BusCopyWith(Bus value, $Res Function(Bus) then) =
      _$BusCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int number,
      @HiveField(1) String name,
      @HiveField(2) String pdfUrl,
      @HiveField(3) String? fileUrl});
}

/// @nodoc
class _$BusCopyWithImpl<$Res> implements $BusCopyWith<$Res> {
  _$BusCopyWithImpl(this._value, this._then);

  final Bus _value;
  // ignore: unused_field
  final $Res Function(Bus) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? pdfUrl = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pdfUrl: pdfUrl == freezed
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BusCopyWith<$Res> implements $BusCopyWith<$Res> {
  factory _$BusCopyWith(_Bus value, $Res Function(_Bus) then) =
      __$BusCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int number,
      @HiveField(1) String name,
      @HiveField(2) String pdfUrl,
      @HiveField(3) String? fileUrl});
}

/// @nodoc
class __$BusCopyWithImpl<$Res> extends _$BusCopyWithImpl<$Res>
    implements _$BusCopyWith<$Res> {
  __$BusCopyWithImpl(_Bus _value, $Res Function(_Bus) _then)
      : super(_value, (v) => _then(v as _Bus));

  @override
  _Bus get _value => super._value as _Bus;

  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? pdfUrl = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_Bus(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pdfUrl: pdfUrl == freezed
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'BusAdapter')
class _$_Bus implements _Bus {
  const _$_Bus(
      {@HiveField(0) required this.number,
      @HiveField(1) required this.name,
      @HiveField(2) required this.pdfUrl,
      @HiveField(3) this.fileUrl});

  factory _$_Bus.fromJson(Map<String, dynamic> json) => _$$_BusFromJson(json);

  @override
  @HiveField(0)
  final int number;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String pdfUrl;
  @override
  @HiveField(3)
  final String? fileUrl;

  @override
  String toString() {
    return 'Bus(number: $number, name: $name, pdfUrl: $pdfUrl, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bus &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pdfUrl, pdfUrl) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pdfUrl),
      const DeepCollectionEquality().hash(fileUrl));

  @JsonKey(ignore: true)
  @override
  _$BusCopyWith<_Bus> get copyWith =>
      __$BusCopyWithImpl<_Bus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusToJson(this);
  }
}

abstract class _Bus implements Bus {
  const factory _Bus(
      {@HiveField(0) required int number,
      @HiveField(1) required String name,
      @HiveField(2) required String pdfUrl,
      @HiveField(3) String? fileUrl}) = _$_Bus;

  factory _Bus.fromJson(Map<String, dynamic> json) = _$_Bus.fromJson;

  @override
  @HiveField(0)
  int get number;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get pdfUrl;
  @override
  @HiveField(3)
  String? get fileUrl;
  @override
  @JsonKey(ignore: true)
  _$BusCopyWith<_Bus> get copyWith => throw _privateConstructorUsedError;
}
