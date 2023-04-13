import 'package:chef_yas/View/Components/dialog.dart';
import 'package:flutter/material.dart';

class SecretGate extends StatelessWidget {
  const SecretGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      height: 200,
      width: 200,
      child: GestureDetector(
        child: Image.asset('lib/Assets/logo.png'),
        onLongPress: () {
          MyDialog(context: context);
        },
      ),
    );
  }
}
