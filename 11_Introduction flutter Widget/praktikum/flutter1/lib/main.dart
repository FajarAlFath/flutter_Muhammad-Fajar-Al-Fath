import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'dart:core';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State{
  var jam = 'Jam';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Simple Watch for Alterra'),
        ),
        body: Center(
          child: Text(
            jam,
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

void Mulai() {
  Timer.periodic(new Duration(seconds: 1),(_){
    var date = new DateTime.now();
    var formatedjam = new DateFormat.Hms().format(date);
    setState((){
      jam = formatedjam;
    });
  });
}

 @override 
 void iniState(){
   Mulai();
   super.iniState();
 }
