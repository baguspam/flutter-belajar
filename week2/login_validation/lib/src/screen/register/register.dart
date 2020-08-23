import 'package:flutter/material.dart';
import '../../utils/clip.dart';
import '../login/login.dart';
import '../home/home.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String vUsername, vPassword;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SingleChildScrollView(
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: WaveShape(),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 120),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
                    child:  Row(
                      children: <Widget>[
                        IconButton(
                          hoverColor: Colors.transparent,
                          icon: Icon(Icons.arrow_back,color: Colors.white, ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },
                        ),
                        Text("Register", style: TextStyle(fontSize: 18,color: Colors.white)),
                      ],
                    )
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                                offset: Offset(0.0, 0.2)
                            )
                          ],
                        ),
                        child: TextFormField(
                          controller: myUsernameController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Data Username tidak boleh kosong';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintText: "Username"
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                                offset: Offset(0.0, 0.3)
                            )
                          ],
                        ),
                        child: TextFormField(
                          controller: myPasswordController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Data Username tidak boleh kosong';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintText: "Password"
                          ),
                        ),
                      ),
                      RaisedButton(
                        padding: EdgeInsets.fromLTRB(0, 13, 0, 13),
                        color: Colors.blue,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.assignment),
                            Text("  "),
                            Text("Register", style: TextStyle(fontSize: 18),),
                          ],
                        ),
                        onPressed: (){
                          vUsername = myUsernameController.text;
                          vPassword = myPasswordController.text;
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Home(
                                          username: vUsername,
                                          password: vPassword,
                                        )
                                )
                            );
                          }
                        },
                      ),
                    ],
                  ),
                )
              )

            ],

            )
            )
    );
  }
}