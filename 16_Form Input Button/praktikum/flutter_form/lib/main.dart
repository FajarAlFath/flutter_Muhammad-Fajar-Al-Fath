import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_form/lets_started.dart';
import 'package:flutter_form/list_contact.dart';
import 'package:flutter_form/logo.dart';

void main() => runApp(const MyApp());

//class MyApp for running the app
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

//class homepage for get started page
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: AssetImage('assets/img/bg.png'), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 18),
          child: Container(
            color: Colors.black.withOpacity(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Logo(),
                Text(
                  'List Contact',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 40),
                ),
                Column(
                  children: [
                    Text(
                      'List Contact is a List views contact',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 18),
                    ),
                    Text(
                      'You can see all your contacts',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 18),
                    ),
                    Text(
                      'Add your contact',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 18),
                    ),
                  ],
                ),
                Started(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Listcontact(namaUser: '', nomorUser: '',),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
