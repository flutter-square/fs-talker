import 'package:flutter/material.dart';

class CallHistoryTile extends StatefulWidget {

  final String text;
  CallHistoryTile({required this.text});

  @override
  _CallHistoryTileState createState() => _CallHistoryTileState();
}

class _CallHistoryTileState extends State<CallHistoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(widget.text)
          ],
        ),
      ),
    );
  }
}
