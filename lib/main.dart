import 'package:flutter/material.dart';
import 'package:recipe/Learn_pdf/tester.dart';
import 'package:recipe/navigationBar/nav_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
