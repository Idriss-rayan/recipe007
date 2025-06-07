import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe/employee.dart';

class Tester extends StatefulWidget {
  const Tester({super.key});

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  @override
  Widget build(BuildContext context) {
    final trashBox = Hive.box<Employee>('trash');
    final deletedEmployees = trashBox.values.toList();
    return Scaffold(
      backgroundColor: Colors.white, // même fond que Figma
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: double.infinity,
                height: 300,
                child: Column(
                  children: [
                    // Partie haute avec le dégradé + cercle
                    SizedBox(
                      height: 300,
                      child: Stack(
                        children: [
                          // Dégradé de fond
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF6EE7B7), Color(0xFF3B82F6)],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                          ),
                          // Cercle bleu
                          Positioned(
                            left: -100,
                            top: -50,
                            child: Container(
                              width: 300,
                              height: 300,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF38BDF8),
                                    Color(0xFF06B6D4)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -100,
                            top: -50,
                            child: Lottie.asset("a_svgFiles/tr.json"),
                          ),
                          const Positioned(
                            left: 180,
                            top: 180,
                            child: Text(
                              'Recycle Bin',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(111, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Partie blanche en dessous
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: deletedEmployees.isEmpty
                  ? const Center(child: Text("Trash is empty"))
                  : ListView.separated(
                      itemCount: deletedEmployees.length,
                      itemBuilder: (context, index) {
                        final e = deletedEmployees[index];
                        return ListTile(
                          title: Text('${e.firstName} ${e.lastName}'),
                          subtitle: Text(
                              '${e.position} • ${e.phone}\nDelete at : ${e.deletedAt != null ? e.deletedAt!.toLocal().toString() : "Date inconnue"}'),
                          trailing: Text('${e.salary} \$'),
                          isThreeLine: true,
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                    ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
