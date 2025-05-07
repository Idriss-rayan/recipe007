import 'package:flutter/material.dart';
import 'package:recipe/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

void main() {
  runApp(MyApp());
}
