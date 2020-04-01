import 'package:flutter/material.dart';

class SimpleGridView extends StatefulWidget {
  @override
  _SimpleGridViewState createState() => _SimpleGridViewState();
}

class _SimpleGridViewState extends State<SimpleGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple GridView"),
      ),

      body: GridView.count(
          crossAxisCount: 3,
        children:  List.generate(15, (index){
          int nIndex = index +1;
          String dataItem = "$nIndex";
          return Center(
            child: Container(
              color: Colors.blueGrey,
              margin: EdgeInsets.all(8),
              height: 100,
              width: 100,
              child: Text("Data Ke - $dataItem", style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
          );
        }),
      ),
    );
  }
}
