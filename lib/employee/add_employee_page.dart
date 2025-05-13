import 'package:flutter/material.dart';

class AddEmployeePage extends StatelessWidget {
  const AddEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Stack(
          children: [
            Container(
              width: 412,
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF25F69F),
                    Color(0xFF2FAFFF),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Positioned(
                top: -10,
                left: -60,
                bottom: -70,
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(151, 2, 172, 30)),
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff9EFFD7),
                        Color(0xff65ADFA),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
