import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recipe/Learn_pdf/home_page.dart';
import 'package:recipe/employee.dart';
import 'package:recipe/gate_screen/first_time.dart';
import 'package:recipe/gate_screen/start_screen.dart';
import 'package:recipe/navigationBar/nav1_bar.dart';

late Box<Employee> employeeBox;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaunchGate(),
      //home: StartScreen(),
    );
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(EmployeeAdapter());
  await Hive.openBox<Employee>('employees');
  await Hive.openBox<Employee>('trash');
  runApp(const MyApp());
}
