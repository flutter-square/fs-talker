import 'package:flutter/material.dart';
import 'package:fs_talker/constants.dart' as styles;

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final AppBar appBar = AppBar();

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        this.title,
        style: TextStyle(
          color: styles.blackLabelColor
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}

