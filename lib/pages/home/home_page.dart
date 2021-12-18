import 'package:flutter/material.dart';
import 'package:fs_talker/components/custom_app_bar.dart';

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
        padding: const EdgeInsets.all(Styles.size32),
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
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
                      builder: (BuildContext context) {
                        return Container(
                          height: 240.0,
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'room idを入力してください',
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Styles.primaryColor)),
                                ),
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              SizedBox(height: Styles.size24),
                              SizedBox(
                                height: Styles.size48,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("入室"),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0.0,
                                      primary: Styles.primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(Styles.size14)
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                    });
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
                    Navigator.of(context).pushNamed('/talk');
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
