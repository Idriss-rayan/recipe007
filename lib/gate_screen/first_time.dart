import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:recipe/gate_screen/start_screen.dart';
import 'package:recipe/navigationBar/nav1_bar.dart';

class LaunchGate extends StatelessWidget {
  const LaunchGate({super.key});

  Future<Map<String, dynamic>> checkFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstLaunch = prefs.getBool('first_launch') ?? true;

    if (isFirstLaunch) {
      await prefs.setBool('first_launch', false);
    }

    final firstName = prefs.getString('first_name') ?? '';
    final lastName = prefs.getString('last_name') ?? '';

    return {
      'isFirstLaunch': isFirstLaunch,
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: checkFirstLaunch(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final data = snapshot.data ?? {};
        final isFirst = data['isFirstLaunch'] ?? true;
        final firstName = data['firstName'] ?? '';
        final lastName = data['lastName'] ?? '';

        if (isFirst || firstName.isEmpty || lastName.isEmpty) {
          return const StartScreen();
        } else {
          return Nav1Bar(
            lastName: lastName,
            firstName: firstName,
          );
        }
      },
    );
  }
}
