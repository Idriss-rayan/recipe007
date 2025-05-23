import 'package:hive/hive.dart';
import 'package:recipe/infos.dart';

late Box<Infos> infos;

Future<void> addSampleAccount() async {
  final account = Infos(
    firstName: "",
    lastName: "",
    salary: 100,
    email: "",
    phone: 300,
    position: 400,
  );

  await infos.add(account);
}
