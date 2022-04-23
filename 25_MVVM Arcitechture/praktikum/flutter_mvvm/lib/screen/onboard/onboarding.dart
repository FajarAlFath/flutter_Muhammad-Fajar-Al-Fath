import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/screen/component/logo.dart';
import 'package:flutter_mvvm/screen/contact/contact_screen.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  started({required Null Function() onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chevron_right_sharp, color: Colors.white.withOpacity(0.7)),
          Text(
            'Lets Get Started',
            style:
                TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 15),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: AssetImage('assets/img/bg.png'), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 18),
          child: Container(
            color: Colors.black.withOpacity(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Logo(),
                Text(
                  'List Contact',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 40),
                ),
                Column(
                  children: [
                    Text(
                      'List Contact is a List views contact',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 18),
                    ),
                    Text(
                      'You can see all your contacts',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 18),
                    ),
                  ],
                ),
                started(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const ContactScreen(),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
