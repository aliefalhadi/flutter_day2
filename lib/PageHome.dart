import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterday2/ui_page/CustomGridView.dart';
import 'package:flutterday2/ui_page/HorizontalListView.dart';
import 'package:flutterday2/ui_page/SimpleGridView.dart';
import 'package:flutterday2/ui_page/SimpleListView.dart';

import 'RegisterPage.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  String valFriend = null;

  List myFriends = [
    "Clara",
    "Jhon",
    "Rizal",
    "Bambang",
    "Stave",
    "Budiono",
    "Indra",
    "Bernard",
    "Maechel"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Title"),
            ),
            Divider(),
            ListTile(
              title: Text("home"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SimpleGridView()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Flutter Day 2"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Text(
                'Simple ListView',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Text(
                'Simple ListView',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SimpleListView()));
              },
            ),
            RaisedButton(
              child: Text(
                'Simple Horizontal ListView',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepOrangeAccent,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HorizontalListView()));
              },
            ),
            RaisedButton(
              child: Text('Simple Grid ListView',
                  style: TextStyle(color: Colors.white)),
              color: Colors.amber,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SimpleGridView()));
              },
            ),
            RaisedButton(
              child: Text('Simple Custom Grid ListView',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CustomGridView()));
              },
            ),
            DropdownButton(
              hint: Text("List my Friends"),
                items: myFriends.map((item){
                  return DropdownMenuItem(
                    child: Text(item),
                    value: item
                  );
                }).toList(),
                onChanged: (value){
                  setState(() {
                    valFriend = value;
                  });
                },
              value: valFriend,
            )
          ],
        ),
      ),
    );
  }
}
