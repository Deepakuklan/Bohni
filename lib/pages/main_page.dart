import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linecons_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ConvexAppBar(
      items: const [
        TabItem(icon: Icons.local_shipping, title: 'Home'),
        TabItem(icon: FontAwesome5.adversal, title: 'My ads'),
        TabItem(icon: Linecons.wallet, title: 'Wallet'),
        TabItem(icon: Icons.people, title: 'Profile'),
      ],
      activeColor: const Color.fromRGBO(255, 216, 0, 1.0),
      backgroundColor: const Color.fromRGBO(0, 30, 91, 1.0),
      initialActiveIndex: 0, //optional, default as 0
      onTap: (int i) => print('click index=$i'),
    ));
  }
}
