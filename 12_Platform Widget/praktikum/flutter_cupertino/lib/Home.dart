import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chats.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // ignore: prefer_const_constructors
  var screens = [Chats()];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('Edit'),
          onPressed: () {},
        ),
        middle: const Text('Message Gram'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(Icons.pin_drop_outlined),
          onPressed: () {},
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              label: "Chats",
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            ),
            BottomNavigationBarItem(
              label: 'Call',
              icon: Icon(CupertinoIcons.phone),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(CupertinoIcons.settings),
            ),
            BottomNavigationBarItem(
              label: 'User',
              icon: Icon(CupertinoIcons.person),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screens[0];
        },
      ),
    );
  }
}
