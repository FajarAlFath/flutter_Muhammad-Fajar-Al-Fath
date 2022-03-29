//this program contain the answer from task 1 and task 2 section 11.

import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State{
  var jam = 'JAM';

 @override 
 void initState(){
   Timer.periodic(const Duration(seconds: 1),(_){
     var date = DateTime.now();
     var formatedjam = DateFormat.Hms().format(date);
     setState((){
       jam = formatedjam;
     });
   });
   super.initState();
 }

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Simple Watch for Alterra'),
       ),
      body: Center(
        child: Text(
          jam,
          style: const TextStyle(fontSize: 50),
         ),
       ),
     ),
   );
  }
}