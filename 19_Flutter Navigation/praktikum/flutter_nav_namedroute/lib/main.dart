import 'package:flutter/material.dart';
import 'package:flutter_nav_namedroute/add.dart';
import 'homepage.dart';


void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        Homepage.routeName:(context) => const Homepage(),
        '/add' : (_)=> const Add(),
      },
    );
  }
}