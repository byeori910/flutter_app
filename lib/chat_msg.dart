import 'package:flutter/material.dart';

class ChatMsg extends StatelessWidget {
  final String txt;

  const ChatMsg(this.txt, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Text(""),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ByeoRi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(txt),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
