import 'package:flutter/material.dart';
import 'package:mind_experience_app/widgets/chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meebo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.black,
              // color: Theme.of(context).accentColor,
            ),
            onPressed: () {
              print('Clicked');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              print('Clicked');
            },
          )
        ],
      ),
      body: Bubble(),
    );
  }
}
