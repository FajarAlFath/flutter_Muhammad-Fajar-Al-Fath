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
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const Homepage(),
        '/image': (context) => const Imagepage(),
        '/image2': (context) => const Imagepage2(),
        '/image3': (context) => const Imagepage3(),
        '/image4': (context) => const Imagepage4(),
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
        mainAxisSpacing: 20,
        padding: const EdgeInsets.only(top: 50),
        crossAxisCount: 2,
        children: <Widget>[
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/image');
                },
                child: const Image(
                  image: AssetImage('assets/image/1.png'),
                  width: 120.0,
                  height: 120.0,
                ),
              ),
              const Text('gambar 1'),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/image2');
                },
                child: const Image(
                  image: AssetImage('assets/image/2.png'),
                  width: 120.0,
                  height: 120.0,
                ),
              ),
              const Text('gambar 2'),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/image3');
                },
                child: const Image(
                  image: AssetImage('assets/image/3.png'),
                  width: 120.0,
                  height: 120.0,
                ),
              ),
              const Text('gambar 3'),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/image4');
                },
                child: const Image(
                  image: AssetImage('assets/image/4.png'),
                  width: 120.0,
                  height: 120.0,
                ),
              ),
              const Text('gambar 4'),
            ],
          ),
        ],
      ),
    );
  }
}
