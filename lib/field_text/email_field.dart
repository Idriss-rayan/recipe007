import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  final String htext;
  final TextEditingController controller;
  const EmailField({super.key, required this.htext, required this.controller});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(16, 105, 240, 175),
          hintText: widget.htext,
          hintStyle: TextStyle(
            color: const Color.fromARGB(142, 158, 158, 158),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
