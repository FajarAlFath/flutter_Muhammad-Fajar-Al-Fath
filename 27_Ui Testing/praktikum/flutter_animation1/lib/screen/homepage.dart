import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Widget button(){
    return const ButtonBar();
  }

  bool pilihan = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: pilihan ? 50 : 300,
          height: pilihan ? 100 : 200,
          decoration: ShapeDecoration(
            color: pilihan ? Colors.amber[600] : Colors.blueAccent[400],
            shape: const CircleBorder(),
            image: const DecorationImage(
              image: AssetImage(
                'assets/img/man.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: GestureDetector(
            onTap: () {
              setState(() {
                pilihan = !pilihan;
              });
            },
          ),
        ),
      ),
    );
  }
}
