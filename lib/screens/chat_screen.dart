import 'package:flutter/material.dart';
import 'package:flutter_refresh_app/models/user_model.dart';

class Chat_Screen extends StatefulWidget {
    final User user;

  const Chat_Screen({required this.user,super.key});
  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(211, 1, 176, 189),
            title: Text(widget.user.name)),
        body: Container(
          color: Colors.orange,
          child: Text('CHAAATT'),
        ));
  }
}
