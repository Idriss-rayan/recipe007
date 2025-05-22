import 'package:flutter/material.dart';

class SalaryField extends StatefulWidget {
  final String htext;
  final TextEditingController controller;
  const SalaryField({super.key, required this.htext, required this.controller});

  @override
  State<SalaryField> createState() => _SalaryFieldState();
}

class _SalaryFieldState extends State<SalaryField> {
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
          keyboardType: TextInputType.numberWithOptions(),
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
