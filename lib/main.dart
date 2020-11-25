import 'package:flutter/material.dart';
import './screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Epp',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatScreen(),
      routes: {
        // ChatScreen.routeName: (ctx) => ChatScreen(),
        // EventDetailsScreen.routeName: (ctx) => EventDetailsScreen(),
        // DevPage.routeName: (ctx) => DevPage(),
      },
    );
  }
}
