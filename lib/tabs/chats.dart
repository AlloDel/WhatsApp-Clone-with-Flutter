import 'package:flutter/material.dart';
import 'package:whatsappclone/data/dummyData.dart';
import 'package:whatsappclone/screens.dart/chatScreen.dart';

class ChatsPage extends StatefulWidget {
  ChatsPage({Key key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  Widget dummyChat() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          new ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return buildChatTile(index);
            },
            itemCount: friendsData.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
          Container(
            padding: EdgeInsets.fromLTRB(1, 16, 1, 1),
            height: 120,
            child: Text(
              "Tap and hold on a chat for more options",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChatTile(int index) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.face),
      ),
      title: Text(friendsData[index].toString()),
      subtitle: Text(message.toString()),
      trailing: Column(
        children: [Text(getCurrentDate())],
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ChatScreen(index: index)));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dummyChat(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.chat),
      ),
    );
  }
}

Widget chatRows() {
  return null;
}
