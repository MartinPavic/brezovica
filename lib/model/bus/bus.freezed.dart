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

  _Bus call({required int number, required BusType type}) {
    return _Bus(
      number: number,
      type: type,
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusCopyWith<Bus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusCopyWith<$Res> {
  factory $BusCopyWith(Bus value, $Res Function(Bus) then) =
      _$BusCopyWithImpl<$Res>;
  $Res call({int number, BusType type});

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
  $Res call({int number, BusType type});

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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bus with DiagnosticableTreeMixin implements _Bus {
  const _$_Bus({required this.number, required this.type});

  factory _$_Bus.fromJson(Map<String, dynamic> json) => _$$_BusFromJson(json);

  @override
  final int number;
  @override
  final BusType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bus(number: $number, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bus'))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bus &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(type));

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
  const factory _Bus({required int number, required BusType type}) = _$_Bus;

  factory _Bus.fromJson(Map<String, dynamic> json) = _$_Bus.fromJson;

  @override
  int get number;
  @override
  BusType get type;
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

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BusType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$BusTypeTearOff {
  const _$BusTypeTearOff();

  BrezovicaBusType brezovica() {
    return const BrezovicaBusType();
  }

  ObrezBusType obrez() {
    return const ObrezBusType();
  }

  BotinecBusType botinec() {
    return const BotinecBusType();
  }

  BusType fromJson(Map<String, Object?> json) {
    return BusType.fromJson(json);
  }
}

/// @nodoc
const $BusType = _$BusTypeTearOff();

/// @nodoc
mixin _$BusType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() brezovica,
    required TResult Function() obrez,
    required TResult Function() botinec,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? brezovica,
    TResult Function()? obrez,
    TResult Function()? botinec,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? brezovica,
    TResult Function()? obrez,
    TResult Function()? botinec,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusTypeCopyWith<$Res> {
  factory $BusTypeCopyWith(BusType value, $Res Function(BusType) then) =
      _$BusTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$BusTypeCopyWithImpl<$Res> implements $BusTypeCopyWith<$Res> {
  _$BusTypeCopyWithImpl(this._value, this._then);

  final BusType _value;
  // ignore: unused_field
  final $Res Function(BusType) _then;
}

/// @nodoc
abstract class $BrezovicaBusTypeCopyWith<$Res> {
  factory $BrezovicaBusTypeCopyWith(
          BrezovicaBusType value, $Res Function(BrezovicaBusType) then) =
      _$BrezovicaBusTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$BrezovicaBusTypeCopyWithImpl<$Res> extends _$BusTypeCopyWithImpl<$Res>
    implements $BrezovicaBusTypeCopyWith<$Res> {
  _$BrezovicaBusTypeCopyWithImpl(
      BrezovicaBusType _value, $Res Function(BrezovicaBusType) _then)
      : super(_value, (v) => _then(v as BrezovicaBusType));

  @override
  BrezovicaBusType get _value => super._value as BrezovicaBusType;
}

/// @nodoc
@JsonSerializable()
class _$BrezovicaBusType
    with DiagnosticableTreeMixin
    implements BrezovicaBusType {
  const _$BrezovicaBusType({String? $type}) : $type = $type ?? 'brezovica';

  factory _$BrezovicaBusType.fromJson(Map<String, dynamic> json) =>
      _$$BrezovicaBusTypeFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusType.brezovica()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BusType.brezovica'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BrezovicaBusType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() brezovica,
    required TResult Function() obrez,
    required TResult Function() botinec,
  }) {
    return brezovica();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? brezovica,
    TResult Function()? obrez,
    TResult Function()? botinec,
  }) {
    return brezovica?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? brezovica,
    TResult Function()? obrez,
    TResult Function()? botinec,
    required TResult orElse(),
  }) {
    if (brezovica != null) {
      return brezovica();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
  }) {
    return brezovica(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
  }) {
    return brezovica?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
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
  const factory BrezovicaBusType() = _$BrezovicaBusType;

  factory BrezovicaBusType.fromJson(Map<String, dynamic> json) =
      _$BrezovicaBusType.fromJson;
}

/// @nodoc
abstract class $ObrezBusTypeCopyWith<$Res> {
  factory $ObrezBusTypeCopyWith(
          ObrezBusType value, $Res Function(ObrezBusType) then) =
      _$ObrezBusTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ObrezBusTypeCopyWithImpl<$Res> extends _$BusTypeCopyWithImpl<$Res>
    implements $ObrezBusTypeCopyWith<$Res> {
  _$ObrezBusTypeCopyWithImpl(
      ObrezBusType _value, $Res Function(ObrezBusType) _then)
      : super(_value, (v) => _then(v as ObrezBusType));

  @override
  ObrezBusType get _value => super._value as ObrezBusType;
}

/// @nodoc
@JsonSerializable()
class _$ObrezBusType with DiagnosticableTreeMixin implements ObrezBusType {
  const _$ObrezBusType({String? $type}) : $type = $type ?? 'obrez';

  factory _$ObrezBusType.fromJson(Map<String, dynamic> json) =>
      _$$ObrezBusTypeFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusType.obrez()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BusType.obrez'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ObrezBusType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() brezovica,
    required TResult Function() obrez,
    required TResult Function() botinec,
  }) {
    return obrez();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? brezovica,
    TResult Function()? obrez,
    TResult Function()? botinec,
  }) {
    return obrez?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? brezovica,
    TResult Function()? obrez,
    TResult Function()? botinec,
    required TResult orElse(),
  }) {
    if (obrez != null) {
      return obrez();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
  }) {
    return obrez(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
  }) {
    return obrez?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
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
  const factory ObrezBusType() = _$ObrezBusType;

  factory ObrezBusType.fromJson(Map<String, dynamic> json) =
      _$ObrezBusType.fromJson;
}

/// @nodoc
abstract class $BotinecBusTypeCopyWith<$Res> {
  factory $BotinecBusTypeCopyWith(
          BotinecBusType value, $Res Function(BotinecBusType) then) =
      _$BotinecBusTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$BotinecBusTypeCopyWithImpl<$Res> extends _$BusTypeCopyWithImpl<$Res>
    implements $BotinecBusTypeCopyWith<$Res> {
  _$BotinecBusTypeCopyWithImpl(
      BotinecBusType _value, $Res Function(BotinecBusType) _then)
      : super(_value, (v) => _then(v as BotinecBusType));

  @override
  BotinecBusType get _value => super._value as BotinecBusType;
}

/// @nodoc
@JsonSerializable()
class _$BotinecBusType with DiagnosticableTreeMixin implements BotinecBusType {
  const _$BotinecBusType({String? $type}) : $type = $type ?? 'botinec';

  factory _$BotinecBusType.fromJson(Map<String, dynamic> json) =>
      _$$BotinecBusTypeFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusType.botinec()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BusType.botinec'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BotinecBusType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() brezovica,
    required TResult Function() obrez,
    required TResult Function() botinec,
  }) {
    return botinec();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? brezovica,
    TResult Function()? obrez,
    TResult Function()? botinec,
  }) {
    return botinec?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? brezovica,
    TResult Function()? obrez,
    TResult Function()? botinec,
    required TResult orElse(),
  }) {
    if (botinec != null) {
      return botinec();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrezovicaBusType value) brezovica,
    required TResult Function(ObrezBusType value) obrez,
    required TResult Function(BotinecBusType value) botinec,
  }) {
    return botinec(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
  }) {
    return botinec?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrezovicaBusType value)? brezovica,
    TResult Function(ObrezBusType value)? obrez,
    TResult Function(BotinecBusType value)? botinec,
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
  const factory BotinecBusType() = _$BotinecBusType;

  factory BotinecBusType.fromJson(Map<String, dynamic> json) =
      _$BotinecBusType.fromJson;
}
