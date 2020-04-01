import 'package:flutter/material.dart';

class HorizontalListView extends StatefulWidget {
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Horizontal ListView'),
        ),
      body: ListView(
        children: <Widget>[

          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                  width: MediaQuery.of(context).size.width/1.5,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.teal,
                ),Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                  width: MediaQuery.of(context).size.width/1.5,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.deepOrange,
                ),Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                  width: MediaQuery.of(context).size.width/1.5,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.purple,
                ),Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                  width: MediaQuery.of(context).size.width/1.5,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.amberAccent,
                ),

              ],
            ),


          ),

          SizedBox(height: 20,),

          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
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
        ],
      ),


    );
  }
}
