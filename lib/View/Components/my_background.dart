import 'package:flutter/material.dart';

class MyBackground extends StatelessWidget {
  final Widget myBody;
  final bool isSub;
  const MyBackground({
    Key? key,
    required this.myBody,
    required this.isSub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: isSub ? const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)) : null,
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(180, 113, 68, 0),
            Color.fromARGB(180, 170, 101, 0),
            Color.fromARGB(180, 255, 152, 0),
            Color.fromARGB(180, 255, 192, 6),
            Color.fromARGB(234, 255, 193, 3),
            Color.fromARGB(255, 255, 193, 0)
          ],
        ),
      ),
      child: myBody,
    );
  }
}
