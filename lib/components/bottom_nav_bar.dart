import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GNav(
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.black,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Card',
          ),
        ],
      ),
    );
  }
}
