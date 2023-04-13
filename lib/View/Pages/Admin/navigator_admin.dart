import 'package:chef_yas/View/Components/my_background.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyNavigatorAdmin extends StatefulWidget {
  const MyNavigatorAdmin({super.key});

  @override
  State<MyNavigatorAdmin> createState() => _MyNavigatorAdminState();
}

class _MyNavigatorAdminState extends State<MyNavigatorAdmin> {
  CurvedNavigationBar bottomBar() {
    return CurvedNavigationBar(
        index: 1,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        color: Colors.black54,
        items: const [
          Icon(Icons.store_rounded, size: 30),
          Icon(Icons.dashboard, size: 30),
          Icon(Icons.wallet_rounded, size: 30),
        ],
        onTap: (index) => {} // refreshThePage(index),
        );
  }

  Container body() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        MyBackground(
          isSub: false,
          myBody: body(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: bottomBar(),
        )
      ]),
    );
  }
}
