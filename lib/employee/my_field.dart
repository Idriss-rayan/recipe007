import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  const MyField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 0, 17, 45)),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(99, 6, 214, 34),
                Color.fromARGB(125, 6, 181, 212)
              ],
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: TextField(
            style: TextStyle(
                fontSize: 30, color: const Color.fromARGB(142, 158, 158, 158)),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "full name",
              hintStyle: TextStyle(color: Colors.grey.withValues(alpha: 0.5)),
              iconColor: Colors.blue,
              filled: false,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
