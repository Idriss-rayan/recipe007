import 'package:hive/hive.dart';
import 'package:recipe/employee.dart';

class Boxes {
  static Box<Employee> getEmployees() => Hive.box<Employee>('employees');
}
