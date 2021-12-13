import 'package:flutter/material.dart';
import 'package:fs_talker/components/custom_app_bar.dart';
import 'package:fs_talker/components/custom_bottom_navigation_bar.dart';

import '../../constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home',
      ),
      body: Padding(
        padding: EdgeInsets.all(Styles.size32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: 8,
              child: Center(
                child: Image.asset(
                  "assets/images/home_pic.png",
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: Styles.size48,
                child: OutlinedButton(
                  onPressed: () {
                    ///遷移処理
                  },
                  child: Text(
                    "roomに参加する",
                    style: Styles.buttonLabelStyle.copyWith(
                      color: Styles.blackLabelColor
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Styles.size14),
                    ),
                    side: BorderSide(
                      width: 0.5,
                      color: Styles.primaryColor,
                    )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Styles.size16,
            ),
            Flexible(
              child: SizedBox(
                height: Styles.size48,
                child: ElevatedButton(
                  onPressed: () {
                    ///遷移処理
                  },
                  child: Text(
                    "roomを作成する",
                    style: Styles.buttonLabelStyle.copyWith(
                        color: Styles.whiteLabelColor
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Styles.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Styles.size14)
                      )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}