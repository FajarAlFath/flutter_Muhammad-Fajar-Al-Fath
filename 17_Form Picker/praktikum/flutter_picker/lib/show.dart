import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class Show extends StatefulWidget{
  const Show(Type string, {Key? key, required this.file, required this.date, required this.color, required this.caption}) : super(key: key);

  final String file;
  final String date;
  final Color color;
  final String caption;  

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