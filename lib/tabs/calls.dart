import 'package:flutter/material.dart';
import 'package:whatsappclone/data/dummyData.dart';

class CallsPage extends StatefulWidget {
  CallsPage({Key key}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  Widget dummyCall() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          new ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return buildCallTile(index);
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
              "",
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCallTile(int index) {
    return new ListTile(
      leading: CircleAvatar(),
      title: Text(friendsData[index].toString()),
      subtitle: Row(
        children: [
          Icon(
            Icons.call_made,
            color: Colors.red,
          ),
          Text(getCurrentDayTime())
        ],
      ),
      trailing: IconButton(icon: Icon(Icons.call), onPressed: () {}),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dummyCall(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_call),
      ),
    );
  }
}
