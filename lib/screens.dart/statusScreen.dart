import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  StatusScreen({Key key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
            CircleAvatar(child: Text(""))
          ],
        ),
        title: Text("Name"),
        actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
        backgroundColor: Colors.transparent,
      ),

      /////////////
      ///
      ///Design reply slide up
      ///
      /////////////
    );
  }
}
