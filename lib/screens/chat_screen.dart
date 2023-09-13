import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_refresh_app/models/user_model.dart';
import 'package:flutter_refresh_app/models/message_model.dart';

class Chat_Screen extends StatefulWidget {
  final User user;

  const Chat_Screen({required this.user, super.key});
  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  _chatBubble(Message message, bool isMe) {
    if (isMe) {
      return Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(211, 1, 176, 189),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      )
                    ]),
                child: Text(
                    message.text,
                    style: TextStyle(color: Colors.white))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(message.time,
                  style: TextStyle(fontSize: 12, color: Colors.black54)),
              SizedBox(width: 10),
              Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ]),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage(message.sender.imageUrl))),
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      )
                    ]),
                child: Text(
                    message.text,
                    style: TextStyle(color: Colors.black54))),
          ),
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ]),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage(message.sender.imageUrl))),
              SizedBox(width: 10),
              Text(message.time,
                  style: TextStyle(fontSize: 12, color: Colors.black54))
            ],
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 220, 220),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(211, 1, 176, 189),
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                    text: widget.user.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
                TextSpan(text: '\n'),
                TextSpan(
                    text: 'Online',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          leading: IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Column(children: <Widget>[
          Expanded(
                         child: ListView.builder(
                            itemCount: chatMessages.length,
            itemBuilder: (BuildContext context, int index) {
              final Message message = chatMessages[index];
              final bool isMe = message.sender.id == currentUser.id;
              return _chatBubble(message, isMe);
            },
                padding:EdgeInsets.all(20),
          )),
          Container(child: Text('Send Text')),
        ]));
  }
}
