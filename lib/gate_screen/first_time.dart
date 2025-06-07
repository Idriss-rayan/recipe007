import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:recipe/gate_screen/start_screen.dart';
import 'package:recipe/navigationBar/nav1_bar.dart';

class LaunchGate extends StatelessWidget {
  const LaunchGate({super.key});

  Future<bool> checkFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstLaunch = prefs.getBool('first_launch') ?? true;

    if (isFirstLaunch) {
      await prefs.setBool('first_launch', false);
    }

    return isFirstLaunch;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: checkFirstLaunch(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final isFirst = snapshot.data ?? true;

        if (isFirst) {
          return const StartScreen();
        } else {
          return const Nav1Bar(
            lastName: 'Default',
            firstName: 'Admin',
          );
        }
      },
    );
  }
}
