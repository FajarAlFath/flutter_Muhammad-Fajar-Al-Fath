import 'package:flutter/material.dart';
import 'model.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Mesagge Gram'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.money),
          )
        ],
      ),
      drawer: Laci(),
      body: ListView.separated(
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(items[i].url),
            ),
            title: Text(
              items[i].nama,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(items[i].pesan),
            trailing: Text(items[i].waktu),
          );
        },
        separatorBuilder: (context, i) {
          return const Divider();
        },
        itemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.create,
            color: Colors.black
          ),
          backgroundColor: Colors.blueGrey,
          onPressed: () {}),
    );
  }
}
