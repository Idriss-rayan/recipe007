import 'package:hive/hive.dart';

part 'infos.g.dart';

@HiveType(typeId: 1)
class Infos {
  Infos({
    required this.firstName,
    required this.lastName,
    required this.salary,
    required this.email,
    required this.phone,
    required this.position,
  });

  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  int salary;

  @HiveField(3)
  String email;

  @HiveField(4)
  int phone;

  @HiveField(5)
  int position;
}
