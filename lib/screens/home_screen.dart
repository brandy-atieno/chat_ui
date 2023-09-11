import 'package:flutter/material.dart';
import 'package:flutter_refresh_app/models/message_model.dart';
import 'package:flutter_refresh_app/screens/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(211, 1, 176, 189),
          elevation: 8,
          leading: IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white,
              onPressed: () => {}),
          title: const Text('Inbox'),
          actions: [
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => {},
                color: Colors.white)
          ],
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Chat_Screen(user:chat.sender))),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(children: <Widget>[
                      Container(
                          decoration: chat.read
                              ? BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(40)),
                                  border: Border.all(
                                    width: 2,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ],
                                )
                              : BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                      )
                                    ]),
                          child: CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage(chat.sender.imageUrl))),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Text(chat.sender.name,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold)),
                                      chat.sender.isOnline
                                          ? Container(
                                              margin: EdgeInsets.only(left: 5),
                                              width: 8,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ))
                                          : Container(child: null)
                                    ],
                                  ),
                                  Text(chat.time,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black54))
                                ]),
                            const SizedBox(height: 10),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(chat.text,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black54),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2),
                            ),
                          ],
                        ),
                      )
                    ])),
              );
            }));
  }
}
