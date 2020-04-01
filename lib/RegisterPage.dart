import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  String valFriend = null;

  List myFriends = [
    "Laki-Laki",
    "Perempuan"
  ];

  Widget signText = Text("Sign In", style: TextStyle(color: Colors.blue),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 4,
              child: Container(
                padding: EdgeInsets.only(left:20, right: 20, top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Register", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      letterSpacing: 2
                    ),),

                    SizedBox(height: 20,),
                    Text("Let's get", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2
                    ),),
                    Text("You on Board", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2
                    ),),

                    SizedBox(height: 20,),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Full Name"
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email"
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                        suffixIcon: Icon(Icons.visibility)
                      ),
                    ),

                    SizedBox(height: 5,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButton(
                        hint: Text("Choosen Gender"),
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
                      ),
                    ),


                    SizedBox(height: 20,),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: RaisedButton(
                        child: Text('Register', style: TextStyle(color: Colors.white, letterSpacing: 5),),
                        color: Colors.blueAccent,
                        onPressed: (){},

                      ),
                    ),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          flex: 2,
                          child: Divider(
                              thickness: 3,
                            height: 2,

                          ),
                        ),
                        SizedBox(width: 16,),
                        Flexible(
                          flex: 1,
                          child: Text("Or")
                        ),
                        SizedBox(width: 16,),

                        Flexible(
                          flex: 2,
                          child: Divider(
                            thickness: 2,
                          ),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        OutlineButton(
                          highlightElevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text("Google", style: TextStyle(letterSpacing: 3)),
                          onPressed: (){},
                        ),
                        OutlineButton(

                          highlightElevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text("Facebook", style: TextStyle(letterSpacing: 3),),
                          onPressed: (){},
                        ),
                      ],
                    ),

                    FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an account?"),
                          Text("Sig In", style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
