import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import '../../utils/clip.dart';
import '../login/login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final myFullNameController = TextEditingController();
  final myUsernameController = TextEditingController();
  final myEmailController = TextEditingController();
  final myPasswordController = TextEditingController();
  String vFullName, vUsername, vEmail, vPassword;

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
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
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
                        child: TextFormField(
                          controller: myFullNameController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Data Fullname tidak boleh kosong';
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
                              contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              filled: true,
                              hintText: "Fullname"
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
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
                        child: TextFormField(
                          controller: myEmailController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Data Email tidak boleh kosong';
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
                              hintText: "Email"
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
                          vEmail = myEmailController.text;
                          if (_formKey.currentState.validate()) {
                            showDialog(
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                  image: Image.asset(
                                    'assets/men_wearing_jacket.gif',
                                    fit: BoxFit.cover,
                                  ),
                                  entryAnimation: EntryAnimation.TOP,
                                  title: Text(
                                    'Register Berhasil',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 22.0, fontWeight: FontWeight.w600),
                                  ),
                                  description: Text(
                                    'Silahkan cek email ${vEmail} konfirmasi dari kami. Terimakasih.',
                                    textAlign: TextAlign.center,
                                  ),
                                  onOkButtonPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            LoginScreen()
                                      )
                                    );
                                  },
                                ));
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