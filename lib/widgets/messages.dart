import 'package:flutter/material.dart';
import 'package:mind_experience_app/widgets/chat_bubble.dart';
import 'package:provider/provider.dart';
import '../providers/messages_provider.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:flutter_dialogflow/v2/auth_google.dart';
import 'package:flutter_dialogflow/v2/dialogflow_v2.dart';
import '../models/message_model.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messages = context.watch<MessageModel>().messages;
    // print(messages.length);

    // return Text(messages.length.toString());

    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        var messageIndex = messages[index];
        return ChatBubble(
          messageIndex["data"],
          messageIndex["message"].toString(),
        );
      },
    );
  }
}
