import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          image: AssetImage('assets/img/contact.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
