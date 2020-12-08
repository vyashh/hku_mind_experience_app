import 'package:flutter/cupertino.dart';

class MessageModel extends ChangeNotifier {
  final List<Map> _chatMessages = List();

  List<Map> get messages => _chatMessages;

  // add messages
  Future<void> add(Map<dynamic, dynamic> message) {
    _chatMessages.add(message);
    // print(_chatMessages);
    notifyListeners();
  }
}
