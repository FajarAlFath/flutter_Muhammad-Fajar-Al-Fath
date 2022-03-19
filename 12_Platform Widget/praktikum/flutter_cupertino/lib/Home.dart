import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override 
  _HomeScreenState createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override 
  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone),),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),),
            BottomNavigationBarItem(
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