import 'package:flutter/material.dart';

import 'call_history_tile.dart';

class CallHistoryList extends StatefulWidget {
  const CallHistoryList({Key? key}) : super(key: key);

  @override
  _CallHistoryListState createState() => _CallHistoryListState();
}

class _CallHistoryListState extends State<CallHistoryList> {

  List<String> callHistories = [
    "a",
    "b",
    "c"
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (context, index) {
              final callHistory = callHistories[index];
              return CallHistoryTile(text: callHistory,);
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.0,);
            },
            itemCount: callHistories.length
        ),
      )
    );
  }
}
