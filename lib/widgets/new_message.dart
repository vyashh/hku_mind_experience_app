import 'package:flutter/material.dart';
import 'package:mind_experience_app/models/message_model.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:flutter_dialogflow/v2/auth_google.dart';
import 'package:flutter_dialogflow/v2/dialogflow_v2.dart';
import 'package:provider/provider.dart';

class NewMessage extends StatefulWidget {
  @override
  _NewMessageState createState() => _NewMessageState();
}

final messages = MessageModel();

void response(query) async {
  AuthGoogle authGoogle =
      await AuthGoogle(fileJson: "assets/service.json").build();
  Dialogflow dialogflow =
      Dialogflow(authGoogle: authGoogle, language: Language.english);
  AIResponse aiResponse = await dialogflow.detectIntent(query);
  messages.add(
    {
      'data': 0,
      'message': aiResponse.getListMessage()[0]['text']['text'][0].toString()
    },
  );

  print(aiResponse.getListMessage()[0]["text"]["text"][0].toString());
}

class _NewMessageState extends State<NewMessage> {
  final _controller = new TextEditingController();
  var _enteredMessage = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _controller,
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              enableSuggestions: true,
              decoration: InputDecoration(labelText: 'Send a message...'),
              onChanged: (value) {
                setState(() {
                  _enteredMessage = value;
                });
              },
            ),
          ),
          IconButton(
              icon: Icon(Icons.send),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Provider.of<MessageModel>(context, listen: false).add(
                  {"data": 1, "message": _controller.text},
                );
                _controller.clear();
              }),
        ],
      ),
    );
  }
}
