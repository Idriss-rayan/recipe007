import 'package:flutter/material.dart';
import 'package:recipe/button/button.dart';
import 'package:recipe/employee/my_field.dart';
import 'package:recipe/field_text/email_field.dart';
import 'package:recipe/field_text/phone_field.dart';
import 'package:recipe/field_text/salary_field.dart';

class AddEmployeePage extends StatelessWidget {
  const AddEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF25F69F),
                        Color(0xFF2FAFFF),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: -60,
                  bottom: -200,
                  child: Container(
                    width: 500,
                    height: 500,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(151, 2, 172, 30)),
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(0, 158, 255, 215),
                          Color.fromARGB(0, 101, 173, 250),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  bottom: 80,
                  child: Text(
                    'Add Employee',
                    style: TextStyle(
                      fontSize: 30,
                      color: const Color.fromARGB(147, 251, 250, 250),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: const [
                  MyField(
                    htext: 'first name',
                  ),
                  MyField(
                    htext: 'last name',
                  ),
                  SalaryField(htext: 'Salary'),
                  EmailField(htext: 'email'),
                  PhoneField(
                    htext: 'phone number',
                  ),
                  MyField(
                    htext: 'position held',
                  ),
                  MyField(
                    htext: '',
                  ),
                  FancyButton(
                    text: 'save',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
