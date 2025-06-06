import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe/Learn_pdf/tester.dart';
import 'package:recipe/employee/add_employee_page.dart';
import 'package:recipe/employee/infos_employee.dart';

class Nav1Bar extends StatefulWidget {
  final String lastName;
  final String firstName;
  const Nav1Bar({super.key, required this.lastName, required this.firstName});

  @override
  State<Nav1Bar> createState() => _Nav1BarState();
}

class _Nav1BarState extends State<Nav1Bar> {
  int myIndex = 0;

  late final List<Widget> WidgetList = [
    // MyField(
    //   htext: '', controller: ,
    // ),
    InfosEmployee(
        lastAdminName: widget.lastName, firstAdminName: widget.firstName),
    Tester(),
    AddEmployeePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WidgetList[myIndex],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          // Custom background container
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 70,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.lightBlueAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blueAccent, width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navIcon('a_svgFiles/home.svg',
                    selected: myIndex == 0, index: 0),
                navIcon('a_svgFiles/user.svg',
                    selected: myIndex == 1, index: 1),
              ],
            ),
          ),

          // Floating center button
          Positioned(
            top: -30,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  myIndex = 2;
                });
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 0,
                      //offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'a_svgFiles/add.svg',
                    width: 25,
                    height: 25,
                    colorFilter: ColorFilter.mode(
                      Colors.green,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Widget icône (home / user)
  Widget navIcon(String iconPath,
      {required bool selected, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          myIndex = index;
        });
      },
      child: SvgPicture.asset(
        iconPath,
        width: 30,
        height: 30,
        colorFilter: ColorFilter.mode(
          selected ? Colors.black : const Color.fromARGB(150, 90, 89, 89),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
