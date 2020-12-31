import 'package:flutter/material.dart';
import 'package:whatsappclone/tabs/calls.dart';
import 'package:whatsappclone/tabs/chats.dart';
import 'package:whatsappclone/tabs/status.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Whatsapp Clone"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: ("CHATS"),
                // icon: Icon(Icons.chat_bubble),
              ),
              Tab(
                text: ("STATUS"),
                // icon: Icon(Icons.state)
              ),
              Tab(
                text: ("CALLS"),
                // icon: Icon(Icons.)
              )
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: TabBarView(
          children: [ChatsPage(), StatusPage(), CallsPage()],
        ),
      ),
    );
  }
}
