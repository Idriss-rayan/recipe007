import 'package:flutter/material.dart';
import 'package:recipe/person_card/costum_card.dart';

class InfosEmployee extends StatefulWidget {
  const InfosEmployee({super.key});

  @override
  State<InfosEmployee> createState() => _InfosEmployeeState();
}

class _InfosEmployeeState extends State<InfosEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // même fond que Figma
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CustomCard(
                    name: 'Njtapmvou Idriss Rayan',
                    phone: '+237 698 12 34 56',
                    email: 'idriss@example.com',
                    salary: '250000',
                    position: 'Développeur Flutter',
                    status: 'complete',
                    code: 'EMP15878',
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
