import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  const Homepage({Key? key}) : super(key: key);

  @override 
  _HomepageState createState()=> _HomepageState();
}

class _HomepageState extends State<Homepage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: const [
            //picture picker
            //date piecker
            //color piecker
            //text piecker
          ],
        ),
      ),
    );
  }
}