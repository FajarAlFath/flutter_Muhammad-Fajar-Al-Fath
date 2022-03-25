import 'package:flutter/material.dart';

class Imagepage4 extends StatelessWidget{
  const Imagepage4({Key? key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Image.asset(
        '',
        height: 500,
        fit: BoxFit.cover,
      )
    );
  }
}