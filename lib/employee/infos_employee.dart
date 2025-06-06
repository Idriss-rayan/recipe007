import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:recipe/employee.dart';
import 'package:recipe/employee/display_infos.dart';
import 'package:recipe/person_card/costum_card.dart';

class InfosEmployee extends StatefulWidget {
  final String lastAdminName;
  final String firstAdminName;
  const InfosEmployee(
      {super.key, required this.lastAdminName, required this.firstAdminName});

  @override
  State<InfosEmployee> createState() => _InfosEmployeeState();
}

class _InfosEmployeeState extends State<InfosEmployee> {
  @override
  Widget build(BuildContext context) {
    final trashBox = Hive.box<Employee>('trash');
    final recycle = trashBox.values.toList().reversed.toList();
    ///////////////////////////////////////////////////////////////
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
                        children: [
                          Text(
                            " Hi,",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(137, 255, 255, 255),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 50),
                              Text(
                                " ${widget.firstAdminName} ${widget.lastAdminName}"
                                    .toUpperCase(),
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
                        label: const Text("More"),
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
                  DateTime now = DateTime.now();
                  DateTime trimmed = DateTime(
                    now.year,
                    now.month,
                    now.day,
                    now.hour,
                    now.minute,
                  );
                  final formatted =
                      DateFormat("dd-MM-yyyy | HH:mm").format(trimmed);
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  DisplayInfos(e: e),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: CustomCard(
                      name: '${e.firstName} ${e.lastName}',
                      phone: e.phone,
                      email: e.email,
                      salary: e.salary,
                      position: e.position,
                      status: 'Save',
                      pushAt: formatted,
                      // delete ici
                      onTap: () async {
                        final confirmed = await showDialog<bool>(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text("Confirm Deletion"),
                            content: const Text(
                                "Do you really want to delete this employee?"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 161, 1, 28),
                                    ),
                                  ),
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );

                        if (confirmed == true) {
                          final keys = box.keys.toList().reversed.toList();
                          final key = keys[index];
                          final deletedEmployee = box.get(key);

                          if (deletedEmployee != null) {
                            final trashBox = Hive.box<Employee>('trash');
                            final clonedEmployee = Employee(
                              firstName: deletedEmployee.firstName,
                              lastName: deletedEmployee.lastName,
                              email: deletedEmployee.email,
                              phone: deletedEmployee.phone,
                              salary: deletedEmployee.salary,
                              position: deletedEmployee.position,
                              deletedAt: DateTime.now(),
                            );

                            await trashBox.add(clonedEmployee);
                            await box.delete(key);
                            setState(() {});
                          }
                        }
                      },
                    ),
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
