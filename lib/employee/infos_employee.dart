import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:recipe/employee.dart';
import 'package:recipe/employee/hive_boxes.dart';
import 'package:recipe/person_card/costum_card.dart';

class InfosEmployee extends StatefulWidget {
  const InfosEmployee({super.key});

  @override
  State<InfosEmployee> createState() => _InfosEmployeeState();
}

class _InfosEmployeeState extends State<InfosEmployee> {
  @override
  Widget build(BuildContext context) {
    final box = Hive.box<Employee>('employees');
    final employees = box.values.toList().reversed.toList();
    return Scaffold(
      backgroundColor: Colors.white, // même fond que Figma
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: double.infinity,
                height: 160,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4ADE80), // vert doux
                      Color(0xFF60A5FA), // bleu doux
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Stack(
                  children: [
                    // Cercle déco en arrière-plan
                    Positioned(
                      right: -60,
                      top: -40,
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(137, 255, 255, 255),
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 50),
                              Text(
                                " List of all Employee",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(112, 2, 1, 58),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 20,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios, size: 16),
                        label: const Text("Voir"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: employees.length,
                itemBuilder: (context, index) {
                  final e = employees[index];
                  return CustomCard(
                    name: '${e.firstName} ${e.lastName}',
                    phone: e.phone,
                    email: e.email,
                    salary: e.salary,
                    position: e.position,
                    status: 'Store',
                    code: ' ',
                  );
                },
                separatorBuilder: (context, index) => Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
