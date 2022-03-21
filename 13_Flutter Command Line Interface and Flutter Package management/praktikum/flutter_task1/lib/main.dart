import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badges and Chips'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Chip(
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.green,
            label: Text(
              'Badge Chip',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Badge(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: BorderRadius.circular(12),
                badgeContent: const Text(
                  'Badge',
                  style: TextStyle(color: Colors.white),
                ),
                badgeColor: const Color.fromARGB(255, 107, 3, 126),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
