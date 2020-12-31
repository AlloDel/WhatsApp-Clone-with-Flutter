import 'package:flutter/material.dart';
import 'package:whatsappclone/data/dummyData.dart';

//Page to display caller inormation when chat tile is tapped in CHATS Tab

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key, this.index}) : super(key: key);

  final index;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Expanded(
        //   child: Row(
        //     children: [
        //       IconButton(
        //           icon: Icon(Icons.arrow_back),
        //           onPressed: () {
        //             Navigator.pop(context);
        //           }),
        //       CircleAvatar(child: Text(""))
        //     ],
        //   ),
        // ),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 74,
              padding: EdgeInsets.only(right: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_back),
                      CircleAvatar(child: Text("")),
                    ]),
              ),
            ),
            InkWell(
                onTap: () {},
                child: Column(
                    // height: appBar.prefferedSize.height,
                    // width: 120,
                    children: [
                      Text(friendsData[widget.index]),
                      Text("online",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.left)
                    ]))
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.video_call_sharp), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),

      //////////////////////////////////////////////////////////
      /// bottom to receive, display and send typed messages ///
      //////////////////////////////////////////////////////////
    );
  }
}
