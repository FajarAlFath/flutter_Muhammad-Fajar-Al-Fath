import 'package:flutter/material.dart';

class Laci extends StatefulWidget {
  const Laci({Key? key}) : super(key: key);

  @override
  _LaciState createState() => _LaciState();
}

class _LaciState extends State<Laci> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
              accountName: Text('Muhammad Fajar Al Fath'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
              ),
              accountEmail: Text('+62 852 6006 3022')),
          Lacilist(
            iconData: Icons.group,
            title: 'New Grup',
            pressed: () {},
          ),
          Lacilist(
            iconData: Icons.contacts,
            title: 'Contacts',
            pressed: () {},
          ),
          Lacilist(
            iconData: Icons.phone,
            title: 'Calls',
            pressed: () {},
          ),
          Lacilist(
            iconData: Icons.bookmark_border,
            title: 'Saved Messages',
            pressed: () {},
          ),
          Lacilist(
            iconData: Icons.settings,
            title: 'Settings',
            pressed: () {},
          ),
          Lacilist(
            iconData: Icons.person_add,
            title: 'Invite Friends',
            pressed: () {},
          ),
          Lacilist(
            iconData: Icons.help_outline,
            title: 'Telegram FAQ',
            pressed: () {},
          )
        ],
      ),
    );
  }
}

class Lacilist extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback pressed;

  const Lacilist(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.pressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: pressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }
}
