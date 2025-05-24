import 'package:flutter/material.dart';
import 'package:recipe/person_card/costum_card.dart';

class Tester extends StatefulWidget {
  const Tester({super.key});

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // même fond que Figma
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 412,
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
                                  colors: [
                                    Color(0xFF6EE7B7),
                                    Color(0xFF3B82F6)
                                  ],
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
                child: Column(
              children: [
                CustomCard(
                  name: 'rayan',
                  status: 'payer',
                  code: 'spectre007',
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
