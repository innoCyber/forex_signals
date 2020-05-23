import 'package:flutter/material.dart';
import 'package:forexsignals/Authentication.dart';
import 'package:forexsignals/Mapping.dart';

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

      home: MappingPage(auth: Auth(),),
    );
  }
}


