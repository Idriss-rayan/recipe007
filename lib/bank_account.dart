import 'package:hive/hive.dart';

part 'bank_account.g.dart';

@HiveType(typeId: 1)
class BankAccount {
  BankAccount({
    required this.currency,
    required this.firstName,
    required this.lastName,
    required this.salary,
    required this.myMoney,
  });

  @HiveField(0)
  String currency;

  @HiveField(1)
  String firstName;

  @HiveField(2)
  String lastName;

  @HiveField(3)
  int salary;

  @HiveField(4)
  int myMoney;
}
