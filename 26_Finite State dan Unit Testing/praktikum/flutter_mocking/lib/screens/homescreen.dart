import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_mocking/screens/menu_screen.dart';

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

  logo() {
    return Container(
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        shape: BoxShape.rectangle,
        color: Colors.white.withOpacity(0.8),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage('assets/dinner.png'),
          fit: BoxFit.fitWidth,
        ),
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
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 18),
          child: Container(
            color: Colors.black.withOpacity(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                logo(),
                Text(
                  'List Menu',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 40),
                ),
                Column(
                  children: [
                    Text(
                      'List Menu is Your list of Your Restauran Menu',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 18),
                    ),
                    Text(
                      'You can see all your Menu',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 18),
                    ),
                  ],
                ),
                started(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const MenuScreen(),
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
