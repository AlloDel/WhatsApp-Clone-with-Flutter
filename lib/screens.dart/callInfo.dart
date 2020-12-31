import 'package:flutter/material.dart';

//Page to display caller inormation when call tile is tapped in CALLS Tab

class CallInfoPage extends StatefulWidget {
  CallInfoPage({Key key}) : super(key: key);

  @override
  _CallInfoPageState createState() => _CallInfoPageState();
}

class _CallInfoPageState extends State<CallInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        title: Text("Call info"),
        actions: [
          IconButton(icon: Icon(Icons.chat), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
    );
  }
}
