import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chats.dart';

class HomeScreen extends StatefulWidget{
  @override 
  _HomeScreenState createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override 
  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              label: "Chats",
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),),
            BottomNavigationBarItem(
              label: 'Call',
              icon: Icon(CupertinoIcons.phone),),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(CupertinoIcons.settings),),
            BottomNavigationBarItem(
              label: 'User',
              icon: Icon(CupertinoIcons.person),),
          ],
          ),
          tabBuilder: (BuildContext context, int index){
            return Container(
              child: Center(
                child: Text('$index'),
              ),
            );
          },
      ),
    );
  }
}