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
                backgroundImage: AssetImage('asset/img/'),
              ),
              accountEmail: Text('fjralfath11@gmail.com')),
   
          DrawerListTile(
            iconData: Icons.group,
            title: 'Grup Baru',
            pressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: 'Chat Rahasia Baru',
            pressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: 'New Channel',
            pressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: 'Contacts',
            pressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: 'Calls',
            pressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: 'Saved Messages',
            pressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.settings,
            title: 'Settings',
            pressed: () {},
          ),
          Divider(),
          DrawerListTile(
            iconData: Icons.person_add,
            title: 'Invite Friends',
            pressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.help_outline,
            title: 'Telegram FAQ',
            pressed: () {},
          )
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback pressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.pressed})
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
          fontSize: 18,
        ),
      ),
    );
  }
}
