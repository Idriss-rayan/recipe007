import 'package:flutter/material.dart';

class Tester extends StatelessWidget {
  const Tester({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // même fond que Figma
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: 412,
            height: 917,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
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
                              colors: [Color(0xFF38BDF8), Color(0xFF06B6D4)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
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
      ),
    );
  }
}
