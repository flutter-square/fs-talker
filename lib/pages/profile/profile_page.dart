import 'package:flutter/material.dart';
import 'package:fs_talker/components/custom_app_bar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "profile",
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Text("profile"),
      ),
    );
  }
}
