import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DownloadButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff2FAFFF),
            Color(0xff02357D),
          ]),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
          border: Border.all(color: const Color.fromARGB(0, 0, 0, 0)),
        ),
        child: Center(
          child: Image.asset(
            'a_svgFiles/dwn.png',
            width: 28,
            height: 28,
          ),
        ),
      ),
    );
  }
}
