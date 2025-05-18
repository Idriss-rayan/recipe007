import 'package:hive/hive.dart';
import 'package:recipe/bank_account.dart';

late Box<BankAccount> boxPersons;

Future<void> addSampleAccount() async {
  final account = BankAccount(
    currency: 'USD',
    firstName: 'John',
    lastName: 'Doe',
    salary: 3000,
    myMoney: 500,
  );

  await boxPersons.add(account);
}
