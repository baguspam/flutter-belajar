import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
              Stack(
                children: <Widget>[
                  Container(
                    child: WaveShape(),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(15, 45, 0, 0),
                      child:  Row(
                        children: <Widget>[
                          Text("Login Input with Validation", style: TextStyle(fontSize: 18,color: Colors.white)),
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
                        child: TextFormField(
                          controller: myUsernameController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Data Username tidak boleh kosong';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.blue, width: 1.3),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.grey, width: 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              hintText: "Username"
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: TextFormField(
                          controller: myPasswordController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Data Password tidak boleh kosong';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.blue, width: 1.3),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.grey, width: 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                            if(vUsername=="admin" && vPassword=="admin") {
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
                              Fluttertoast.showToast(
                                msg: "Username atau Password salah, Silahkan cek kembali !!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0
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