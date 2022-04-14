import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          const Image(
            image: AssetImage(
              'assets/bg.png',
            ),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          const Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage('assets/word.png'),
                width: 160,
                height: 160,
              )),
          Positioned(
            bottom: 20,
            left: 125,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(
                        right: 35, top: 8, bottom: 8, left: 35),
                    primary: const Color.fromARGB(255, 195, 158, 144),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromARGB(179, 236, 224, 224),
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.only(
                          right: 40, top: 10, bottom: 10, left: 40)),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        color: Color.fromARGB(179, 236, 224, 224),
                        fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
