import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:recipe/navigationBar/nav1_bar.dart';

late Box box;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nav1Bar(),
    );
  }
}

Future<void> main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('box');
  //Hive.registerAdapter(MyObjectAdapter());
  runApp(const MyApp());
}
