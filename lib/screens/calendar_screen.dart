import 'package:flutter/material.dart';
import 'package:mind_experience_app/widgets/calendar_time.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calendar',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
              // color: Theme.of(context).accentColor,
            ),
            onPressed: () {
              print('Clicked');
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Calendar()),
              // );
            },
          ),
        ],
      ),
      body: CalendarTime(),
    );
  }
}
