import 'package:chef_yas/View/Components/my_background.dart';
import 'package:chef_yas/View/Components/secret_gate.dart';
import 'package:flutter/material.dart';

class MyNavigatorStaff extends StatelessWidget {
  const MyNavigatorStaff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackground(
          myBody: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SecretGate(),
            ],
          ),
          isSub: false),
    );
  }
}
