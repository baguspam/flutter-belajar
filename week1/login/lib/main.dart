import 'package:flutter/material.dart';
import 'package:login/src/screen/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Week 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white
      ),
      home: LoginScreen(),
    );
  }
}
