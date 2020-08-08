import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login/src/screen/login/login.dart';
import '../../utils/clip.dart';

class Home extends StatefulWidget {
  final String username;
  final String password;

  Home({Key key, @required this.username, @required this.password}): super(key:key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: WaveShape(),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 120),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(15, 40, 0, 0),
                    child:  Text("Home", style: TextStyle(fontSize: 18,color: Colors.white)),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 12.0,
                            offset: Offset(0.0, 0.75)
                        )
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.person, color: Colors.white, size: 40,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.all(7),
                          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        ),
                        Column(
                          children: <Widget>[
                            Text("Username :  ${widget.username}", style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text("Password  : ${widget.password}", style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(0, 13, 0, 13),
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.power_settings_new),
                          Text("  "),
                          Text("Log Out", style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LoginScreen()
                            )
                        );
                      },
                    ),
                  )
                ],
              )
            )
          ],
        )
    );
  }
}
