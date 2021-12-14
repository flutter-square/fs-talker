import 'package:flutter/material.dart';
import 'package:fs_talker/components/custom_app_bar.dart';

import '../../constants.dart';
import 'call_history_list.dart';

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
      backgroundColor: Styles.secondaryColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 122,
              ),
              SizedBox(
                height: 168,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(64)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Taiyo Ishikawa",
                          style: Styles.profileNameLabelStyle,
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "@taitai",
                          style: TextStyle(
                              color: Styles.greyLabelColor
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("よろしくお願いします"),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))
                ),
              ),
              CallHistoryList()
            ],
          ),
          Positioned(
            top: 64,
            left: 16,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 0.1
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/home_pic.png")
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
