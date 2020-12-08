import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Me',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            height: 230,
            child: Center(
              child: Text(
                'Theodore',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Stats'),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}