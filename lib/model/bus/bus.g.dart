// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BusAdapter extends TypeAdapter<_$_Bus> {
  @override
  final int typeId = 0;

  @override
  _$_Bus read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Bus(
      number: fields[0] as int,
      name: fields[1] as String,
      pdfUrl: fields[2] as String,
      fileUrl: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Bus obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.pdfUrl)
      ..writeByte(3)
      ..write(obj.fileUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bus _$$_BusFromJson(Map<String, dynamic> json) => _$_Bus(
      number: json['number'] as int,
      name: json['name'] as String,
      pdfUrl: json['pdfUrl'] as String,
      fileUrl: json['fileUrl'] as String?,
    );

Map<String, dynamic> _$$_BusToJson(_$_Bus instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'pdfUrl': instance.pdfUrl,
      'fileUrl': instance.fileUrl,
    };
