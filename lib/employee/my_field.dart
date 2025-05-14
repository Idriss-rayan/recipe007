import 'package:flutter/material.dart';

class MyField extends StatefulWidget {
  final String htext;
  const MyField({super.key, required this.htext});

  @override
  State<MyField> createState() => _MyFieldState();
}

class _MyFieldState extends State<MyField> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(
              color: _isTapped
                  ? const Color.fromARGB(255, 12, 247, 3)
                  : const Color.fromARGB(255, 8, 0, 58),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(55, 6, 214, 34),
                Color.fromARGB(66, 6, 181, 212)
              ],
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: TextField(
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
            cursorColor: Colors.black,
            style: TextStyle(
                fontSize: 20, color: const Color.fromARGB(142, 158, 158, 158)),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: widget.htext,
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
