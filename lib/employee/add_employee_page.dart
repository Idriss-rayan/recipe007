import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:recipe/button/button.dart';
import 'package:recipe/employee.dart';
import 'package:recipe/employee/display_infos.dart';
import 'package:recipe/employee/my_field.dart';
import 'package:recipe/field_text/email_field.dart';
import 'package:recipe/field_text/phone_field.dart';
import 'package:recipe/field_text/salary_field.dart';

class AddEmployeePage extends StatefulWidget {
  const AddEmployeePage({super.key});

  @override
  State<AddEmployeePage> createState() => _AddEmployeePageState();
}

class _AddEmployeePageState extends State<AddEmployeePage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();
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
                children: [
                  MyField(
                    htext: 'first name',
                    controller: _controller1,
                  ),
                  MyField(
                    htext: 'last name',
                    controller: _controller2,
                  ),
                  SalaryField(
                    htext: 'Salary',
                    controller: _controller3,
                  ),
                  EmailField(
                    htext: 'email',
                    controller: _controller4,
                  ),
                  PhoneField(
                    htext: 'phone number',
                    controller: _controller5,
                  ),
                  MyField(
                    htext: 'position held',
                    controller: _controller6,
                  ),
                  MyField(
                    htext: '',
                    controller: _controller6,
                  ),
                  FancyButton(
                    text: 'save',
                    onPressed: () async {
                      final firstName = _controller1.text;
                      final lastName = _controller2.text;
                      final salary = _controller3.text;
                      final email = _controller4.text;
                      final phone = _controller5.text;
                      final position = _controller6.text;

                      if (firstName.isEmpty ||
                          lastName.isEmpty ||
                          salary.isEmpty ||
                          email.isEmpty ||
                          phone.isEmpty ||
                          position.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('please fill all fields'),
                          ),
                        );
                        return;
                      }
                      final newEmployee = Employee(
                        firstName: firstName,
                        lastName: lastName,
                        salary: salary,
                        email: email,
                        phone: phone,
                        position: position,
                      );
                      final box = Hive.box<Employee>('employees');
                      await box.add(newEmployee);
                      final e = newEmployee;

                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          title: const Text('Success'),
                          content: const Text(
                              'Employee information has been saved successfully.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        DisplayInfos(
                                      e: e,
                                    ),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                'OK',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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
