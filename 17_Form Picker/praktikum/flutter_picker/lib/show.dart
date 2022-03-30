import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

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


  void _openFile(PlatformFile,file){
    OpenFile.open(file.path);
  }
}