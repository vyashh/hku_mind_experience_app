import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatefulWidget {
  final int data;
  final String message;

  ChatBubble(this.data, this.message);

  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment:
            widget.data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          widget.data == 0 ? SizedBox() : SizedBox(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Bubble(
                radius: Radius.circular(10.0),
                color: widget.data == 0
                    ? Color.fromRGBO(23, 157, 139, 1)
                    : Theme.of(context).primaryColor,
                elevation: 0.0,
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                          child: Container(
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Text(
                          widget.message,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ))
                    ],
                  ),
                )),
          ),
          widget.data == 1 ? SizedBox() : Container(),
        ],
      ),
    );
  }
}
