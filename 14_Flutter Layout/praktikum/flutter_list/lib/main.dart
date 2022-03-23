import 'package:flutter/material.dart';
import 'model.dart';

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

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, i){
            return ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(''),
              ),
              title: Text(
                items[i].nama,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
          separatorBuilder: (context, i){
            return Divider();
          },
          itemCount: items.length),
    );
  }
}