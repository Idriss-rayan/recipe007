import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String status;
  final String code;
  CustomCard({
    super.key,
    required this.name,
    required this.status,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(16, 37, 246, 159),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromARGB(255, 0, 25, 60),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(49, 179, 243, 225),
                border: Border.all(
                  color: const Color.fromARGB(103, 0, 30, 63),
                  width: 2,
                ),
              ),
              child: SvgPicture.asset(
                'a_svgFiles/person.svg',
                width: 15,
                height: 15,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    name.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color.fromARGB(81, 1, 113, 78)),
                  ),
                  SizedBox(height: 5),
                  Divider(),
                  SelectableText(
                    code,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: const Color.fromARGB(246, 68, 69, 69),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'status'.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: const Color.fromARGB(255, 2, 237, 198)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
