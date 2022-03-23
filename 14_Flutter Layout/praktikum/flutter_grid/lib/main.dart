import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gridview',
        ),
        backgroundColor: Colors.purple,
      ),
      body: GridView.count(
        crossAxisCount: 8,
        children: List.generate(80, (index) {
          return const SizedBox(
            child: Icon(Icons.money),
          );
        }),
      ),
    );
  }
}


