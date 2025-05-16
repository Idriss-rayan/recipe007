import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, const Color.fromARGB(255, 0, 25, 79)])),
          child: Text('Save'),
        ),
      ),
    );
  }
}
