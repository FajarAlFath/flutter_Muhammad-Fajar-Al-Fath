import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Message Gram',
      theme: ThemeData(
        primaryColor:Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: Home(),
    );
  }
}



