import 'package:flutter/cupertino.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:flutter_dialogflow/v2/auth_google.dart';
import 'package:flutter_dialogflow/v2/dialogflow_v2.dart';

class MessageModel extends ChangeNotifier {
  final List<Map> _chatMessages = List();

  List<Map> get messages => _chatMessages;

  void response(query) async {
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/service.json").build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse aiResponse = await dialogflow.detectIntent(query);

    _chatMessages.add({
      "data": 0,
      "message": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
    });

    print(aiResponse.getListMessage()[0]["text"]["text"][0].toString());
    notifyListeners();
  }

  // add messages
  Future<void> add(Map<dynamic, dynamic> message) async {
    _chatMessages.add(message);
    response(message['message']);
    notifyListeners();
  }
}
