import 'package:hive/hive.dart';

part 'employee.g.dart';

@HiveType(typeId: 0)
class Employee extends HiveObject {
  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  String salary;

  @HiveField(3)
  String email;

  @HiveField(4)
  String phone;

  @HiveField(5)
  String position;

  @HiveField(6)
  DateTime? deletedAt;

  @HiveField(7)
  final DateTime? pushAt;

  Employee({
    required this.firstName,
    required this.lastName,
    required this.salary,
    required this.email,
    required this.phone,
    required this.position,
    this.deletedAt,
    this.pushAt,
  });
}
