import 'package:flutter/material.dart';
import 'package:flutter_app/chat_msg.dart';
import 'package:logger/logger.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textEditingController = TextEditingController();

  List<ChatMsg> _chat = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _chat.length,
              itemBuilder: (BuildContext context, int index) {
                return _chat[index];
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(hintText: "input MSG"),
                    onSubmitted: _handleSubmitted,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                FlatButton(
                  onPressed: () {
                    _handleSubmitted(_textEditingController.text);
                  },
                  child: Text("Send"),
                  color: Colors.purpleAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    Logger().d(text);
    _textEditingController.clear();
    ChatMsg newChat = ChatMsg(text);
    setState(() {
      _chat.insert(0, newChat);
      // _chat.add(newChat);
    });
  }
}
