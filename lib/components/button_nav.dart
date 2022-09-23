import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:challenge_three/screens/screens.dart';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ButtonNav extends StatefulWidget {
  const ButtonNav({Key? key}) : super(key: key);

  @override
  _ButtonNavState createState() => _ButtonNavState();
}

class _ButtonNavState extends State<ButtonNav> {
  int _pages = 0;
  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      IconlyLight.user,
      IconlyLight.user,
      IconlyLight.user,
      IconlyLight.user,
    ];

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: _pages,
        onTap: (value) {
          setState(() {
            _pages = value;
          });
        },
      ),
      body: Center(
        child: Container(
            child: Text(
          "$_pages",
          style: TextStyle(color: Colors.black, fontSize: 50),
        )),
      ),
    );
  }
}
