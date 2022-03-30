import 'package:flutter/material.dart';

class AddContact extends StatefulWidget{
  const AddContact({Key? key}) : super(key: key);

  @override 
  _AddContactState createState()=> _AddContactState();
}

class _AddContactState extends State<AddContact>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 35),
        child: Column(
          children: [

          ],
        ),
        ),
    );
  }
}