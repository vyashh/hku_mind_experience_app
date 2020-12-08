import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:flutter_dialogflow/v2/auth_google.dart';
import 'package:flutter_dialogflow/v2/dialogflow_v2.dart';

class MessagesProvider {
  final List<Map> _chatMessages = List();

  void response(query) async {
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/service.json").build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse aiResponse = await dialogflow.detectIntent(query);

    _chatMessages.insert(0, {
      "data": 0,
      "message": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
    });

    print(aiResponse.getListMessage()[0]["text"]["text"][0].toString());
  }

  messages() {
    return _chatMessages;
  }

  void add(Map<dynamic, dynamic> message) {
    _chatMessages.add(message);
  }
}
