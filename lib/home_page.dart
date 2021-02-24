import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
      ),
      body: Container(
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
    );
  }

  void _handleSubmitted(String text) {
    print(text);
    _textEditingController.clear();
  }
}
