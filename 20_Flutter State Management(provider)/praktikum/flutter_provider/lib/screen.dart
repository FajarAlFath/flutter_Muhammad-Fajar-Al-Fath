import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  const Screens({ Key? key }) : super(key: key);

  @override
  _ScreensState createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
                      itemCount: provider.kontak.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            provider.kontak[index].nama,
                            style: const TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(provider.kontak[index].nomor),
                        );
                      }),
    )
  }
}