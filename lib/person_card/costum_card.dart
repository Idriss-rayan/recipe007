import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe/button/delete_button.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String phone;
  final String email;
  final String salary;
  final String position;
  final String status;
  final String code;
  final VoidCallback onTap;

  const CustomCard({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
    required this.salary,
    required this.position,
    required this.status,
    required this.code,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(15, 6, 214, 111),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 0, 40, 76),
            width: 1.5,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 12),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal.withOpacity(0.1),
                    border: Border.all(
                      color: Colors.teal.shade800,
                      width: 2,
                    ),
                  ),
                  child: SvgPicture.asset(
                    'a_svgFiles/person.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(height: 12),
                DeleteButton(onTap: onTap),
              ],
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 51, 40),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '📞 $phone',
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      '📧 $email',
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      '💼 Position: $position',
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      '💰 Salary: $salary €',
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Chip(
                          label: Text(
                            status.toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: status.toLowerCase() == 'store'
                              ? const Color.fromARGB(167, 76, 175, 79)
                              : Colors.redAccent,
                        ),
                        Text(
                          ' $code',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
