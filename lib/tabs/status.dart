import 'package:flutter/material.dart';
import 'package:whatsappclone/screens.dart/myStatusScreen.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  Widget recentUpdates() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
          alignment: Alignment.centerLeft,
          height: 30,
          child: Text("  Recent Updates"),
        ),
        // ListView.builder(
        //   physics: NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   itemBuilder: null,
        // ),
      ],
    );
  }

  Widget viewedUpdates() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
          alignment: Alignment.centerLeft,
          height: 30,
          child: Text("Viewed Updates"),
          decoration: BoxDecoration(),
        ),
        // ListView.builder(
        //   physics: NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   itemBuilder: null,
        // ),
      ],
    );
  }

  Widget myStatus() {
    return ListTile(
      leading: CircleAvatar(
        child: Text(""),
      ),
      title: Text("My Status"),
      subtitle: Text("Just now"),
      trailing: IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyStatusScreen()));
        },
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return
        // SingleChildScrollView(
        //   physics: BouncingScrollPhysics(),
        //   child:
        Scaffold(
      body: Column(children: [myStatus()]),
      floatingActionButton: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 0,
              onPressed: () {},
              backgroundColor: Colors.white,
              child: Icon(Icons.edit, color: Colors.teal[800]),
            ),
            FloatingActionButton(
                heroTag: 1,
                onPressed: () {},
                backgroundColor: Colors.green,
                child: Icon(Icons.photo_camera)),
          ],
        ),
      ),
      // ),
    );
  }
}
