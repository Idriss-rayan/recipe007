import 'package:flutter/material.dart';

class MyField extends StatefulWidget {
  final String htext;
  final TextEditingController controller;
  const MyField({super.key, required this.htext, required this.controller});

  @override
  State<MyField> createState() => _MyFieldState();
}

class _MyFieldState extends State<MyField> {
  TextInputType phone = TextInputType.phone;
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(
              color: _isTapped
                  ? const Color.fromARGB(255, 12, 12, 12)
                  : const Color.fromARGB(255, 8, 0, 58),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(10, 6, 214, 34),
                Color.fromARGB(10, 6, 181, 212)
              ],
            ),
            borderRadius: BorderRadius.circular(15)),
        child: TextField(
          controller: widget.controller,
          onTap: () {
            setState(() {
              _isTapped = true;
            });
          },
          onEditingComplete: () {
            setState(() {
              _isTapped = false;
            });
          },
          cursorColor: Colors.grey,
          style: TextStyle(
              fontSize: 15, color: const Color.fromARGB(142, 158, 158, 158)),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            //labelText: widget.htext,
            hintText: widget.htext,
            hintStyle: TextStyle(color: Colors.grey.withValues(alpha: 0.7)),
            iconColor: Colors.blue,
            filled: false,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
