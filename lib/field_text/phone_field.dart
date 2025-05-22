import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneField extends StatefulWidget {
  final String htext;
  final TextEditingController controller;
  const PhoneField({super.key, required this.htext, required this.controller});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: IntlPhoneField(
        initialCountryCode: 'CM',
        keyboardType: TextInputType.phone,
        onChanged: (PhoneNumber phone) {
          print(phone.completeNumber);
        },
        cursorColor: Colors.grey,
        style: const TextStyle(
          fontSize: 15,
          color: Color.fromARGB(142, 158, 158, 158),
        ),
        decoration: InputDecoration(
          hintText: widget.htext,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black),
          ),
          fillColor: const Color.fromARGB(10, 6, 214, 34),
        ),
      ),
    );
  }
}
