import 'package:flutter/material.dart';
import 'image.dart';
import 'image_2.dart';
import 'image_3.dart';
import 'image_4.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const Homepage(),
        '/image': (context) => const Imagepage(),
      },
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('assets Demo'),
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          SizedBox(
            width: 20,
            height: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/imagepage');
              },
              child: const Image(
                image: AssetImage('assets/1.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
