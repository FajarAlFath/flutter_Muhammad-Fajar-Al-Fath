import 'package:flutter/material.dart';
import 'model.dart';
import 'drawer.dart';

class Home extends StatefulWidget{
  @override 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesagge Gram'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: Laci(),
      body: ListView.separated(
        itemBuilder: (ctx, i){
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(items[i].url),
            ),
            title: Text(items[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(items[i].message),
            trailing: Text(items[i].time),
          );
        },
        separatorBuilder: (ctx, i){
          return Divider();
        },        
      itemCount: items.length,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create,color: Colors.white,),
        backgroundColor : Color(0xFF65a9e0),
      onPressed: (){}),
    );
  }
}