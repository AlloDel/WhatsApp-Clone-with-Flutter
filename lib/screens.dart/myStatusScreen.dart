import 'package:flutter/material.dart';

class MyStatusScreen extends StatefulWidget {
  MyStatusScreen({Key key}) : super(key: key);

  @override
  _MyStatusScreenState createState() => _MyStatusScreenState();
}

class _MyStatusScreenState extends State<MyStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("My Status"),
      ),
      body: Center(
        child: Container(
          child: Text("My Status Screen"),
        ),
      ),
      ///////////////////
      ///////////////////
      //////////////////
      //////////////////
      floatingActionButton: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () {},
              backgroundColor: Colors.white,
              child: Icon(Icons.edit, color: Colors.teal[800]),
            ),
            FloatingActionButton(
                heroTag: null,
                onPressed: () {},
                backgroundColor: Colors.green,
                child: Icon(Icons.photo_camera)),
          ],
        ),
      ),
    );
  }
}
