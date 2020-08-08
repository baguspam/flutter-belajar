import 'package:flutter/material.dart';
import 'package:login/src/utils/clip.dart';
import '../home/home.dart';
import '../register/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String vUsername, vPassword;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: WaveShape(),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
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
                      // Login
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
                            Icon(Icons.lock_open),
                            Text("  "),
                            Text("Log In", style: TextStyle(fontSize: 18),),
                          ],
                        ),
                        onPressed: (){
                          vUsername = myUsernameController.text;
                          vPassword = myPasswordController.text;
                          if (_formKey.currentState.validate()) {
                            if(vUsername=="bagus" && vPassword=="12345") {
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
                            }else{
                              print("Username atau Pssword salah");
                              AlertDialog(
                                title: Text("Alert"),
                                content: Text("Username dan Password salah"),
                                actions: [
                                  FlatButton(
                                    child: Text("OK"),
                                    onPressed: () { },
                                  )
                                ],
                              );
                            }
                          }
                        },
                      ),
                      // margin pembagi
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      ),
                      // Register
                      OutlineButton(
                        padding: EdgeInsets.fromLTRB(0, 13, 0, 13),
                        color: Colors.white,
                        textColor: Colors.blue,
                        borderSide: BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 1.5,
                        ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                RegisterScreen()
                            )
                          );
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