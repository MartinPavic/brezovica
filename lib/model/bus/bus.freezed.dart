// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
      {required int number,
      required BusType type,
      required Uri url,
      String? pdfFilePath}) {
    return _Bus(
      number: number,
      type: type,
      url: url,
      pdfFilePath: pdfFilePath,
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
  int get number => throw _privateConstructorUsedError;
  BusType get type => throw _privateConstructorUsedError;
  Uri get url => throw _privateConstructorUsedError;
  String? get pdfFilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusCopyWith<Bus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusCopyWith<$Res> {
  factory $BusCopyWith(Bus value, $Res Function(Bus) then) =
      _$BusCopyWithImpl<$Res>;
  $Res call({int number, BusType type, Uri url, String? pdfFilePath});

  $BusTypeCopyWith<$Res> get type;
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
    Object? type = freezed,
    Object? url = freezed,
    Object? pdfFilePath = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BusType,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      pdfFilePath: pdfFilePath == freezed
          ? _value.pdfFilePath
          : pdfFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $BusTypeCopyWith<$Res> get type {
    return $BusTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$BusCopyWith<$Res> implements $BusCopyWith<$Res> {
  factory _$BusCopyWith(_Bus value, $Res Function(_Bus) then) =
      __$BusCopyWithImpl<$Res>;
  @override
  $Res call({int number, BusType type, Uri url, String? pdfFilePath});

  @override
  $BusTypeCopyWith<$Res> get type;
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
    Object? type = freezed,
    Object? url = freezed,
    Object? pdfFilePath = freezed,
  }) {
    return _then(_Bus(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BusType,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      pdfFilePath: pdfFilePath == freezed
          ? _value.pdfFilePath
          : pdfFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bus with DiagnosticableTreeMixin implements _Bus {
  const _$_Bus(
      {required this.number,
      required this.type,
      required this.url,
      this.pdfFilePath});

  factory _$_Bus.fromJson(Map<String, dynamic> json) => _$$_BusFromJson(json);

  @override
  final int number;
  @override
  final BusType type;
  @override
  final Uri url;
  @override
  final String? pdfFilePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bus(number: $number, type: $type, url: $url, pdfFilePath: $pdfFilePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bus'))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('pdfFilePath', pdfFilePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bus &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.pdfFilePath, pdfFilePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(pdfFilePath));

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
      {required int number,
      required BusType type,
      required Uri url,
      String? pdfFilePath}) = _$_Bus;

  factory _Bus.fromJson(Map<String, dynamic> json) = _$_Bus.fromJson;

  @override
  int get number;
  @override
  BusType get type;
  @override
  Uri get url;
  @override
  String? get pdfFilePath;
  @override
  @JsonKey(ignore: true)
  _$BusCopyWith<_Bus> get copyWith => throw _privateConstructorUsedError;
}

BusType _$BusTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'brezovica':
      return BrezovicaBusType.fromJson(json);
    case 'obrez':
      return ObrezBusType.fromJson(json);
    case 'botinec':
      return BotinecBusType.fromJson(json);
    case 'empty':
      return EmptyBusType.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BusType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$BusTypeTearOff {
  const _$BusTypeTearOff();

  BrezovicaBusType brezovica({required String description}) {
    return BrezovicaBusType(
      description: description,
    );
  }

  ObrezBusType obrez({required String description}) {
    return ObrezBusType(
      description: description,
    );
  }

  BotinecBusType botinec({required String description}) {
    return BotinecBusType(
      description: description,
    );
  }

  EmptyBusType empty({String description = ''}) {
    return EmptyBusType(
      description: description,
    );
  }

  BusType fromJson(Map<String, Object?> json) {
    return BusType.fromJson(json);
  }
}

/// @nodoc
const $BusType = _$BusTypeTearOff();

/// @nodoc
mixin _$BusType {
  String get description => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) brezovica,
    required TResult Function(String description) obrez,
    required TResult Function(String description) botinec,
    required TResult Function(String description) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
    required TResult Function(EmptyBusType value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusTypeCopyWith<BusType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusTypeCopyWith<$Res> {
  factory $BusTypeCopyWith(BusType value, $Res Function(BusType) then) =
      _$BusTypeCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$BusTypeCopyWithImpl<$Res> implements $BusTypeCopyWith<$Res> {
  _$BusTypeCopyWithImpl(this._value, this._then);

  final BusType _value;
  // ignore: unused_field
  final $Res Function(BusType) _then;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $BrezovicaBusTypeCopyWith<$Res>
    implements $BusTypeCopyWith<$Res> {
  factory $BrezovicaBusTypeCopyWith(
          BrezovicaBusType value, $Res Function(BrezovicaBusType) then) =
      _$BrezovicaBusTypeCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$BrezovicaBusTypeCopyWithImpl<$Res> extends _$BusTypeCopyWithImpl<$Res>
    implements $BrezovicaBusTypeCopyWith<$Res> {
  _$BrezovicaBusTypeCopyWithImpl(
      BrezovicaBusType _value, $Res Function(BrezovicaBusType) _then)
      : super(_value, (v) => _then(v as BrezovicaBusType));

  @override
  BrezovicaBusType get _value => super._value as BrezovicaBusType;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(BrezovicaBusType(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrezovicaBusType
    with DiagnosticableTreeMixin
    implements BrezovicaBusType {
  const _$BrezovicaBusType({required this.description, String? $type})
      : $type = $type ?? 'brezovica';

  factory _$BrezovicaBusType.fromJson(Map<String, dynamic> json) =>
      _$$BrezovicaBusTypeFromJson(json);

  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusType.brezovica(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusType.brezovica'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BrezovicaBusType &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $BrezovicaBusTypeCopyWith<BrezovicaBusType> get copyWith =>
      _$BrezovicaBusTypeCopyWithImpl<BrezovicaBusType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) brezovica,
    required TResult Function(String description) obrez,
    required TResult Function(String description) botinec,
    required TResult Function(String description) empty,
  }) {
    return brezovica(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
  }) {
    return brezovica?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
    required TResult orElse(),
  }) {
    if (brezovica != null) {
      return brezovica(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
    required TResult Function(EmptyBusType value) empty,
  }) {
    return brezovica(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
  }) {
    return brezovica?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
    required TResult orElse(),
  }) {
    if (brezovica != null) {
      return brezovica(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BrezovicaBusTypeToJson(this);
  }
}

abstract class BrezovicaBusType implements BusType {
  const factory BrezovicaBusType({required String description}) =
      _$BrezovicaBusType;

  factory BrezovicaBusType.fromJson(Map<String, dynamic> json) =
      _$BrezovicaBusType.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $BrezovicaBusTypeCopyWith<BrezovicaBusType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObrezBusTypeCopyWith<$Res> implements $BusTypeCopyWith<$Res> {
  factory $ObrezBusTypeCopyWith(
          ObrezBusType value, $Res Function(ObrezBusType) then) =
      _$ObrezBusTypeCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$ObrezBusTypeCopyWithImpl<$Res> extends _$BusTypeCopyWithImpl<$Res>
    implements $ObrezBusTypeCopyWith<$Res> {
  _$ObrezBusTypeCopyWithImpl(
      ObrezBusType _value, $Res Function(ObrezBusType) _then)
      : super(_value, (v) => _then(v as ObrezBusType));

  @override
  ObrezBusType get _value => super._value as ObrezBusType;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(ObrezBusType(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObrezBusType with DiagnosticableTreeMixin implements ObrezBusType {
  const _$ObrezBusType({required this.description, String? $type})
      : $type = $type ?? 'obrez';

  factory _$ObrezBusType.fromJson(Map<String, dynamic> json) =>
      _$$ObrezBusTypeFromJson(json);

  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusType.obrez(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusType.obrez'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ObrezBusType &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $ObrezBusTypeCopyWith<ObrezBusType> get copyWith =>
      _$ObrezBusTypeCopyWithImpl<ObrezBusType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) brezovica,
    required TResult Function(String description) obrez,
    required TResult Function(String description) botinec,
    required TResult Function(String description) empty,
  }) {
    return obrez(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
  }) {
    return obrez?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
    required TResult orElse(),
  }) {
    if (obrez != null) {
      return obrez(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
    required TResult Function(EmptyBusType value) empty,
  }) {
    return obrez(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
  }) {
    return obrez?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
    required TResult orElse(),
  }) {
    if (obrez != null) {
      return obrez(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ObrezBusTypeToJson(this);
  }
}

abstract class ObrezBusType implements BusType {
  const factory ObrezBusType({required String description}) = _$ObrezBusType;

  factory ObrezBusType.fromJson(Map<String, dynamic> json) =
      _$ObrezBusType.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $ObrezBusTypeCopyWith<ObrezBusType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotinecBusTypeCopyWith<$Res> implements $BusTypeCopyWith<$Res> {
  factory $BotinecBusTypeCopyWith(
          BotinecBusType value, $Res Function(BotinecBusType) then) =
      _$BotinecBusTypeCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$BotinecBusTypeCopyWithImpl<$Res> extends _$BusTypeCopyWithImpl<$Res>
    implements $BotinecBusTypeCopyWith<$Res> {
  _$BotinecBusTypeCopyWithImpl(
      BotinecBusType _value, $Res Function(BotinecBusType) _then)
      : super(_value, (v) => _then(v as BotinecBusType));

  @override
  BotinecBusType get _value => super._value as BotinecBusType;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(BotinecBusType(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotinecBusType with DiagnosticableTreeMixin implements BotinecBusType {
  const _$BotinecBusType({required this.description, String? $type})
      : $type = $type ?? 'botinec';

  factory _$BotinecBusType.fromJson(Map<String, dynamic> json) =>
      _$$BotinecBusTypeFromJson(json);

  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusType.botinec(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusType.botinec'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BotinecBusType &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $BotinecBusTypeCopyWith<BotinecBusType> get copyWith =>
      _$BotinecBusTypeCopyWithImpl<BotinecBusType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) brezovica,
    required TResult Function(String description) obrez,
    required TResult Function(String description) botinec,
    required TResult Function(String description) empty,
  }) {
    return botinec(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
  }) {
    return botinec?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
    required TResult orElse(),
  }) {
    if (botinec != null) {
      return botinec(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
    required TResult Function(EmptyBusType value) empty,
  }) {
    return botinec(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
  }) {
    return botinec?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
    required TResult orElse(),
  }) {
    if (botinec != null) {
      return botinec(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BotinecBusTypeToJson(this);
  }
}

abstract class BotinecBusType implements BusType {
  const factory BotinecBusType({required String description}) =
      _$BotinecBusType;

  factory BotinecBusType.fromJson(Map<String, dynamic> json) =
      _$BotinecBusType.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $BotinecBusTypeCopyWith<BotinecBusType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyBusTypeCopyWith<$Res> implements $BusTypeCopyWith<$Res> {
  factory $EmptyBusTypeCopyWith(
          EmptyBusType value, $Res Function(EmptyBusType) then) =
      _$EmptyBusTypeCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$EmptyBusTypeCopyWithImpl<$Res> extends _$BusTypeCopyWithImpl<$Res>
    implements $EmptyBusTypeCopyWith<$Res> {
  _$EmptyBusTypeCopyWithImpl(
      EmptyBusType _value, $Res Function(EmptyBusType) _then)
      : super(_value, (v) => _then(v as EmptyBusType));

  @override
  EmptyBusType get _value => super._value as EmptyBusType;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(EmptyBusType(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmptyBusType with DiagnosticableTreeMixin implements EmptyBusType {
  const _$EmptyBusType({this.description = '', String? $type})
      : $type = $type ?? 'empty';

  factory _$EmptyBusType.fromJson(Map<String, dynamic> json) =>
      _$$EmptyBusTypeFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusType.empty(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusType.empty'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyBusType &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $EmptyBusTypeCopyWith<EmptyBusType> get copyWith =>
      _$EmptyBusTypeCopyWithImpl<EmptyBusType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) brezovica,
    required TResult Function(String description) obrez,
    required TResult Function(String description) botinec,
    required TResult Function(String description) empty,
  }) {
    return empty(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
  }) {
    return empty?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? brezovica,
    TResult Function(String description)? obrez,
    TResult Function(String description)? botinec,
    TResult Function(String description)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
    required TResult Function(EmptyBusType value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    TResult Function(EmptyBusType value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyBusTypeToJson(this);
  }
}

abstract class EmptyBusType implements BusType {
  const factory EmptyBusType({String description}) = _$EmptyBusType;

  factory EmptyBusType.fromJson(Map<String, dynamic> json) =
      _$EmptyBusType.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $EmptyBusTypeCopyWith<EmptyBusType> get copyWith =>
      throw _privateConstructorUsedError;
}
