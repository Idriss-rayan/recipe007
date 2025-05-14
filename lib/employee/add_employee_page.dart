import 'package:flutter/material.dart';
import 'package:recipe/employee/my_field.dart';

class AddEmployeePage extends StatelessWidget {
  const AddEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ClipRRect(
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
                            Color.fromARGB(111, 158, 255, 215),
                            Color.fromARGB(94, 101, 173, 250),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: const [
                    SizedBox(height: 30),
                    MyField(
                      htext: 'first name',
                    ),
                    SizedBox(height: 30),
                    MyField(
                      htext: 'last name',
                    ),
                    SizedBox(height: 16),
                    MyField(
                      htext: 'Salary',
                    ),
                    SizedBox(height: 16),
                    MyField(
                      htext: 'Email Address',
                    ),
                    SizedBox(height: 16),
                    MyField(
                      htext: 'Phone Number',
                    ),
                    SizedBox(height: 16),
                    MyField(
                      htext: 'position held',
                    ),
                    SizedBox(height: 16),
                    MyField(
                      htext: '',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
