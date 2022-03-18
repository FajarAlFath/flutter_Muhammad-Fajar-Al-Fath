import 'package:flutter/material.dart';

class Laci extends StatefulWidget {
  @override
  _LaciState createState() => _LaciState();
}

class _LaciState extends State<Laci> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('Muhammad Fajar Al Fath'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/img/saya.png'),
              ),
              accountEmail: Text('fjralfath11@gmail.com')),
   
          Drawerlist(
            iconData: Icons.group,
            title: 'Grup Baru',
            pressed: () {},
          ),
          Drawerlist(
            iconData: Icons.lock,
            title: 'Chat Rahasia Baru',
            pressed: () {},
          ),
          Drawerlist(
            iconData: Icons.notifications,
            title: 'New Channel',
            pressed: () {},
          ),
          Drawerlist(
            iconData: Icons.contacts,
            title: 'Contacts',
            pressed: () {},
          ),
          Drawerlist(
            iconData: Icons.phone,
            title: 'Calls',
            pressed: () {},
          ),
          Drawerlist(
            iconData: Icons.bookmark_border,
            title: 'Saved Messages',
            pressed: () {},
          ),
          Drawerlist(
            iconData: Icons.settings,
            title: 'Settings',
            pressed: () {},
          ),
          Drawerlist(
            iconData: Icons.person_add,
            title: 'Invite Friends',
            pressed: () {},
          ),
          Drawerlist(
            iconData: Icons.help_outline,
            title: 'Telegram FAQ',
            pressed: () {},
          )
        ],
      ),
    );
  }
}

class Drawerlist extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback pressed;

  const Drawerlist({Key? key, required this.iconData, required this.title, required this.pressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: pressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
