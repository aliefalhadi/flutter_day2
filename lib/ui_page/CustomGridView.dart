import 'package:flutter/material.dart';

import 'DetailMounth.dart';

class CustomGridView extends StatefulWidget {
  @override
  _CustomGridViewState createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  
  List dataGunung;
  
  @override
  void initState() {
    super.initState();
    dataGunung = [
      {"name":"gunung Ciremai", "image":"gunung1.jpeg"},
      {"name":"gunung Rinjani", "image":"gunung2.jpeg"},
      {"name":"gunung Semeru", "image":"gunung3.jpeg"},
      {"name":"gunung Salak", "image":"gunung4.jpeg"},
      {"name":"gunung Tangkuban Perahu", "image":"gunung5.jpeg"},
      {"name":"gunung Merapi", "image":"gunung6.jpeg"},
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom GridView"),
      ),
      body: GridView.builder(
        itemCount: dataGunung.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index){
          String namaGunung = dataGunung[index]['name'];
          String gambarGunung = dataGunung[index]['image'];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailMounth(
                  nama: namaGunung,
                  image: gambarGunung
                )));
              },
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Card(
                  elevation: 2,
                  child: Container(
                    height: 120,
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/gambar_gunung/$gambarGunung',
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                            child: Text(namaGunung)
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
