import 'package:flutter/material.dart';

class Imagepage extends StatelessWidget{
  const Imagepage({Key? key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Image.asset(
        'assets/image/1.jpg',
        fit: BoxFit.fill,
      )
    );
  }
}