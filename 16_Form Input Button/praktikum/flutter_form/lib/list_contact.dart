import 'package:flutter/material.dart';
import 'package:flutter_form/add_contact.dart';

class Listcontact extends StatelessWidget {
  const Listcontact({Key? key,required this.namaUser, required this.nomorUser}) : super(key: key);

  final String namaUser;
  final String nomorUser;
  
  //list contack 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
        dataContact('Muhammad Fajar Al Fath', '082356704923'),
        dataContact('Annisa', '082356704923'),
        dataContact('Nabila', '082356704923'),
        dataContact('Robot', '082356704923'),
        dataContact(namaUser, nomorUser),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightGreen,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const AddContact()),
          );
        },
      ),
    );
  }

  //widget data contact to add your contact hardcode
  Widget dataContact(var name,String number) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/img/contact.png'),
          ),
          subtitle: Text(
          number,
          style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
        ),
        title: Text(name),
        ),
        const Divider(),
      ],
    );
  }
}
