import 'package:flutter/material.dart';

class Imagepage4 extends StatelessWidget{
  const Imagepage4({Key? key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Image.asset(
        'assets/image/4.png',
        fit: BoxFit.fill,
      )
    );
  }
}