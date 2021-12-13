import 'package:flutter/material.dart';
import 'package:fs_talker/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Styles.backgroundBottomNavigationBarColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'settings',
        ),
      ],
    );
  }
}
