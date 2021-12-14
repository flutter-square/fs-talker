import 'package:flutter/material.dart';
import 'package:fs_talker/components/custom_app_bar.dart';

import '../../constants.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  List<String> settings  = [
    "お問い合わせ",
    "プライバシーポリシー",
    "利用規約",
    "ライセンス",
    "バージョン",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "settings",
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 32, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(Styles.size8)),
              ),
              height: 64,
              child: Padding(
                padding: const EdgeInsets.all(Styles.size8),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
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
                    SizedBox(width: Styles.size8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Taiyo Ishikawa",
                          style: Styles.profileNameLabelStyle.copyWith(
                            fontSize: Styles.size16
                          ),
                        ),
                        Text(
                          "@taitai",
                          style: TextStyle(
                              color: Styles.greyLabelColor
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: Styles.size32,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(Styles.size8)),
                ),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final settingLabel = settings[index];
                    return GestureDetector(
                      onTap: () {
                        print("tapped");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(bottom: BorderSide(width: 0.2, color: Colors.grey))
                        ),
                        height: 64,
                        child: Padding(
                          padding: const EdgeInsets.all(Styles.size8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(settingLabel),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: Styles.size16,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: settings.length,
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}