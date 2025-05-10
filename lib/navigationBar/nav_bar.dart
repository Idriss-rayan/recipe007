import 'package:flutter/material.dart';
import 'package:recipe/Learn_pdf/tester.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myIndex = 0;
  List<Widget> WidgetList = const [
    Tester(),
    Tester(),
    Text('News', style: TextStyle(fontSize: 40)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WidgetList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.blueGrey.withValues(alpha: 0.4),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
            backgroundColor: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
