import 'package:flutter/material.dart';

class DetailMounth extends StatefulWidget {
  String nama, image;
  DetailMounth({this.nama, this.image});
  @override
  _DetailMounthState createState() => _DetailMounthState();
}

class _DetailMounthState extends State<DetailMounth> {
  String nama, gambar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      nama = widget.nama;
      gambar = widget.image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Mounth'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 3,
            child: Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[
                  Image.asset("assets/gambar_gunung/$gambar", fit: BoxFit.fill, width: MediaQuery.of(context).size.width,),
                  Text(nama)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
