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
        primaryColor:Color.fromARGB(1, 47, 164, 231),
        accentColor: Color.fromARGB(1, 185, 236, 228),
        backgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}



