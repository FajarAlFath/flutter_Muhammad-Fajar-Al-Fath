import 'dart:html';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_picker/show.dart';
import 'package:open_file/open_file.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var datePick;
  var selectedFile;
  var colorPick;
  var input;
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Column(
              children: const [
                Text(
                  'Cover',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            //picture picker
            //date piecker
            //color piecker
            TextField(
              controller: _textController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Write your caption here',
                label: const Text('Caption'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(),
                ),

              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Show(
                      // file: ,
                      // time: date,
                      // color: color,
                      caption: _textController,
                    )))
                    );
                  },
                  child: const Text(
                    'Show the data',
                    style: TextStyle(color: Colors.white10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDataPicker(BuildContext context) {
    return Column();
  }

  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Pilih File'),
        ),
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    selectedFile = File(result.files.single.path.toString());
  }
}
