import 'package:flutter/material.dart';
import 'add.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          dataContact('Muhammad Fajar Al Fath', '082356704923'),
          dataContact('Annisa', '082356704923'),
          dataContact('Nabila', '082356704923'),
          dataContact('Robot', '082356704923'),
          dataContact(args.nama, args.pesan),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
      ),
    );
  }

  //widget data contact to add your contact hardcode
  Widget dataContact(var name, var number) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/img/1.png'),
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
