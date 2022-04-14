import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login.dart';
import 'package:flutter_login/screens/onboarding.dart';
import 'package:flutter_login/screens/register.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const OnBoarding(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
      },
    );
  }
}
