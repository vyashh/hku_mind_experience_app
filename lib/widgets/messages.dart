import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mind_experience_app/widgets/chat_bubble.dart';
import 'package:provider/provider.dart';
import '../providers/messages_provider.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:flutter_dialogflow/v2/auth_google.dart';
import 'package:flutter_dialogflow/v2/dialogflow_v2.dart';
import '../models/message_model.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

ScrollController _scrollController = ScrollController();

void _scrollToBottom() {
  _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
}

class _MessagesState extends State<Messages> {
  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (mounted) {
        _scrollToBottom();
      } else {
        timer.cancel();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final messages = context.watch<MessageModel>().messages;
    return ListView.builder(
      controller: _scrollController,
      itemCount: messages.length,
      shrinkWrap: true,
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
