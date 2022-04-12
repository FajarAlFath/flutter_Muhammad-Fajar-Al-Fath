import 'dart:io';
import 'package:uuid/uuid.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import '../provider/data.dart';

class AddForm extends StatefulWidget {
  const AddForm({Key? key, required this.onCreate}) : super(key: key);
  final Function(Data) onCreate;

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  // PICK FILE
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedFile;
  _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png'],
      allowMultiple: false,
    );
    if (result == null) return;
    final file = result.files.first;
    setState(() {
      _fileName = file.name;
      pickedFile = result.files.first;
    });
  }

  // PICK COLOR
  Color currentColor = Colors.white;
  final TextEditingController _colorController = TextEditingController();
  color() {
    return BlockPicker(
      pickerColor: currentColor,
      onColorChanged: (color) {
        setState(() {
          currentColor = color;
          String colorString = currentColor.toString();
          _colorController.text = colorString.split('(0x')[1].split(')')[0];
        });
      },
    );
  }

  // PICK DATE
  final TextEditingController _dateController = TextEditingController();
  Future<void> _chooseDate(
      BuildContext context, String initialDateString) async {
    var now = DateTime.now();
    var initialDate = convertToDate(initialDateString) ?? now;
    var result = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(2000),
        lastDate: DateTime.now());

    if (result == null) return;
    setState(() {
      _dateController.text = DateFormat('dd/MM/yyyy').format(result);
    });
  }

  DateTime? convertToDate(String input) {
    try {
      var dts = DateFormat('dd/MM/yyyy').parseStrict(input);
      return dts;
    } catch (errrs) {
      return null;
    }
  }

  String? caption;
  final _captionController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _captionController.addListener(() {
      setState(() {
        caption = _captionController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian Cover
          const Text(
            'Cover',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _fileName == null
                ? ElevatedButton(
                    onPressed: () {
                      _pickFile();
                    },
                    child: const Text('Pilih File'),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_fileName!),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _fileName = null;
                            });
                          },
                          icon: const Icon(Icons.delete_outlined))
                    ],
                  ),
          ),
          const SizedBox(
            height: 10,
          ),

          // Bagian pick date
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _dateController,
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                      labelText: 'Publish At',
                      hintText: 'dd/mm/yyyy',
                      suffixIcon: _dateController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.remove_circle_outline),
                              onPressed: () {
                                setState(() {
                                  _dateController.clear();
                                });
                              },
                            )
                          : null),
                ),
              ),
              IconButton(
                onPressed: () {
                  _chooseDate(context, _dateController.text);
                },
                icon: const Icon(Icons.date_range),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          // Bagian pick color
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _colorController,
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                      labelText: 'Color Theme',
                      hintText: 'Pick a Color',
                      prefixIcon: _colorController.text.isNotEmpty
                          ? Icon(
                              Icons.circle_sharp,
                              color: currentColor,
                            )
                          : null,
                      suffixIcon: _colorController.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  _colorController.clear();
                                });
                              },
                              icon: const Icon(Icons.remove_circle_outline))
                          : null),
                ),
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Pick Your Color'),
                          content: color(),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Apply'))
                          ],
                        );
                      });
                },
                icon: const Icon(Icons.color_lens_outlined),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          // Bagian caption
          const Text(
            'Caption',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Expanded(
            child: TextField(
              controller: _captionController,
              textAlignVertical: TextAlignVertical.top,
              maxLines: null,
              expands: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // Tombollll
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    _submit();
                  },
                  child: const Text('Simpan'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _submit() {
    final postItem = Data(
      id: const Uuid().v1(),
      cover: File(pickedFile!.path.toString()),
      color: currentColor,
      date: _dateController.text,
      caption: _captionController.text,
    );
    widget.onCreate(postItem);
  }
}
