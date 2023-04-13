import 'package:chef_yas/View/Pages/Staff/navigator_staff.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: MediaQueryData.fromWindow(WidgetsBinding.instance.window).platformBrightness, useMaterial3: true),
        home: const MyNavigatorStaff());
  }
}
