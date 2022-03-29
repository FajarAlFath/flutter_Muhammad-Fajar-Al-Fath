import 'package:flutter/material.dart';

class Started extends StatelessWidget {
  const Started({Key? key, this.onPressed}) : super(key: key);
  final onPressed;
  
  @override
  Widget build(BuildContext context) {
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
}