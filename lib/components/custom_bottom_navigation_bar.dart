import 'package:flutter/material.dart';


class CustomBottomNavigationBar extends StatelessWidget {

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFFF5F5F5), // TODO: constantsのColorに置き換える
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
