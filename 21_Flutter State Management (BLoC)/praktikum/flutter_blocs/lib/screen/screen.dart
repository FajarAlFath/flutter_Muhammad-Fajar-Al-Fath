import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final _formKey = GlobalKey<FormState>();
  var namaControl = TextEditingController();
  var nomorControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          textform(
                              controller: namaControl,
                              icon: Icons.supervised_user_circle_outlined,
                              label: 'Input nama'),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //widget inputform
  Widget textform({
    required TextEditingController controller,
    required IconData icon,
    required String label,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: label,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
        ),
        validator: (isi) {
          if (isi == null || isi.isEmpty) {
            return 'Input sesuatu';
          }
          return null;
        },
      ),
    );
  }
}
