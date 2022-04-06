import 'package:flutter/material.dart';
import 'package:flutter_provider/model.dart';
import 'package:provider/provider.dart';
import 'component/contact.dart' as contact_component;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var formkey = GlobalKey<FormState>();
  var numberController = TextEditingController();
  var namaController = TextEditingController();
  String nama = '';
  String number = '';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<contact_component.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan nama',
                labelText: 'Nama',
                icon: const Icon(Icons.people),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              controller: namaController,
              onChanged: (String value) {
                nama = value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan nomor',
                labelText: 'Nomor',
                icon: const Icon(Icons.people),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              controller: numberController,
              onChanged: (String value) {
                number = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate())return;
                
                formkey.currentState!.save();

                provider.add(
                  Getkontak(
                    nama: nama,
                    nomor: number,
                  )
                );
              },
              child: const Text('Save'),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: provider.kontak.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          provider.kontak[index].nama,
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(provider.kontak[index].nomor),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
