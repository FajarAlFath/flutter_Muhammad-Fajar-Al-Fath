import 'package:flutter/material.dart';
import 'package:flutter_nav_namedroute/homepage.dart';


class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            inputForm(),
          ],
        ),
      ),
    );
  }

  Widget inputForm() {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              keyboardType: TextInputType.name,
              autofocus: true,
              decoration: InputDecoration(
                hintText: "Masukkan nama anda",
                labelText: 'Nama Anda',
                icon: const Icon(Icons.people),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nama tidak boleh kosong';
                }
                return null;
              },
            ),
            TextFormField(
              controller: controller1,
              keyboardType: TextInputType.phone,
              autofocus: true,
              decoration: InputDecoration(
                hintText: "0821xxxxxxxxx",
                labelText: 'Nomor Telepon',
                icon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nomor tidak boleh kosong';
                }
                return null;
              },
            ),
            SizedBox(
              height: 30,
              child: ElevatedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Data Disimpan')));
                    }
                    Navigator.pushNamed(
                      context,
                      Homepage.routeName,
                      arguments: ScreenArguments(controller.text, controller1.text),
                      
                    );
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Save your data')),
            ),
          ],
        ),
      ),
    );
  }
}

