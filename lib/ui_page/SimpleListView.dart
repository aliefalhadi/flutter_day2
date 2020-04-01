import 'package:flutter/material.dart';

class SimpleListView extends StatefulWidget {
  @override
  _SimpleListViewState createState() => _SimpleListViewState();
}

class _SimpleListViewState extends State<SimpleListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple ListView'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.teal,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.deepOrange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.cyan,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
