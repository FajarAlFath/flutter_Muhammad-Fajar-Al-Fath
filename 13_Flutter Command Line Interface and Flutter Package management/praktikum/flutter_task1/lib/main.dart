import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Chip(
              padding: EdgeInsets.all(0),
              backgroundColor: Colors.green,
              label: Text('Badge Chip',style: TextStyle(color: Colors.white),),
            ),
            Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              borderRadius: BorderRadius.circular(8),
              badgeContent: Text('Badge', style: TextStyle(color: Colors.white),),
              badgeColor: Color.fromARGB(255, 107, 3, 126),
            )
          ],
        ),
      ),
    );
  }
}
