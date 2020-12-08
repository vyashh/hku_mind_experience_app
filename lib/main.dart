import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/chat_screen.dart';
import 'models/message_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MessageModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
