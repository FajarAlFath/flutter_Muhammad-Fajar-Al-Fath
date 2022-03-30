import 'package:flutter/material.dart';

class Show extends StatefulWidget{
  const Show({Key? key}) : super(key: key);

  @override 
  _ShowState createState()=> _ShowState();
}

class _ShowState extends State<Show>{
  @override 
  Widget  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Post'),
        centerTitle: true,
        leading: InkWell(
          onTap: (){},
          child: const Icon(Icons.chevron_left_sharp),
        ),
      ),
      body: ,
    );
  }
}