import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Chip(
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.green,
            label: Text(
              'Badge Chip',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            borderRadius: BorderRadius.circular(8),
            badgeContent: const Text(
              'Badge',
              style: TextStyle(color: Colors.white),
            ),
            badgeColor: const Color.fromARGB(255, 107, 3, 126),
          )
        ],
      ),
    );
  }
}
