import 'package:flutter/material.dart';

class Listcontact extends StatelessWidget {
  const Listcontact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Widget'),
        centerTitle: true,
        leading: InkWell(
          child: const Icon(Icons.chevron_left),
          onTap: () => {Navigator.pop(context)},
        ),
      ),
    );
  }
}
