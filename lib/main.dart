import 'package:flutter/material.dart';
import 'package:forexsignals/HomePage.dart';
import 'package:forexsignals/LoginRegisterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Forex Signals',
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),

      home: HomePage(),
    );
  }
}


