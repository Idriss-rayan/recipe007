// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InfosAdapter extends TypeAdapter<Infos> {
  @override
  final int typeId = 1;

  @override
  Infos read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Infos(
      firstName: "",
      lastName: "",
      salary: 0,
      email: "",
      phone: 0,
      position: 0,
    )
      ..firstName = fields[0] as String
      ..lastName = fields[1] as String
      ..salary = fields[2] as int
      ..email = fields[3] as String
      ..phone = fields[4] as int
      ..position = fields[5] as int;
  }

  @override
  void write(BinaryWriter writer, Infos obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.lastName)
      ..writeByte(2)
      ..write(obj.salary)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.position);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InfosAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
