import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  late SharedPreferences logindata;
  String username = '';

  @override
  void initState() {
    initial();
    super.initState();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Selamat pagi'),
            Text(username),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                logindata.setBool('login', true);
                logindata.remove('username');
                Navigator.pushReplacementNamed(
                  context,
                  '/login',
                );
              },
              child: const Text('logout'),
            )
          ],
        ),
      ),
    );
  }
}
