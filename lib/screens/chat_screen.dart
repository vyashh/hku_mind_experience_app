import 'package:flutter/material.dart';
import 'package:mind_experience_app/screens/calendar_screen.dart';
import 'package:provider/provider.dart';
import '../models/message_model.dart';
import 'package:mind_experience_app/widgets/messages.dart';
import '../widgets/new_message.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MessageModel(),
      child: Scaffold(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calendar()),
                );
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
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Messages(),
              ),
              NewMessage(),
            ],
          ),
        ),
      ),
    );
  }
}
