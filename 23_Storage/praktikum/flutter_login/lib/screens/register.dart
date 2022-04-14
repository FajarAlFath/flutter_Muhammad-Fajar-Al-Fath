import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 195, 158, 144),
        title: const Text('Register here'),
        leading: InkWell(
          autofocus: true,
          child: const Icon(Icons.chevron_left),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(),
    );
  }
}
