import 'package:flutter/material.dart';

class Imagepage2 extends StatelessWidget{
  const Imagepage2({Key? key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Image.asset(
        'assets/image/2.png',
        fit: BoxFit.fill,
      )
    );
  }
}