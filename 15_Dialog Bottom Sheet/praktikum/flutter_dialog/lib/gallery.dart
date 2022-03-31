import 'package:flutter/material.dart';

class Galery extends StatefulWidget {
  const Galery({Key? key}) : super(key: key);

  @override
  _GaleryState createState() => _GaleryState();
}

class _GaleryState extends State<Galery> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 50,
      padding: const EdgeInsets.only(top: 20),
      crossAxisCount: 2,
      children: <Widget>[
        Column(
          children: [
            const Image(
              height: 100,
              width: 100,
              image: AssetImage('assets/img/1.png'),
            ),
            ElevatedButton.icon(
              label: const Text('  Dialog Allert'),
              icon: const Icon(Icons.info),
              onPressed: () {
                AlertDialog alert = AlertDialog(
                  content: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/img/1.png'),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle
                    ),
                  ),
                  title: const Text('Gambar Berhasil Ditampilkan'),
                  actions: [
                    TextButton(
                      child: const Text('Ok'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
                showDialog(context: context, builder: (context) => alert);
              },
            ),
            const Divider(),
            ElevatedButton.icon(
              label: const Text('Bottom Sheet'),
              icon: const Icon(Icons.image_rounded),
              onPressed: () {
                showModal('assets/img/1.png');
              },
            ),
          ],
        ),
        Column(
          children: [
            const Image(
              height: 100,
              width: 100,
              image: AssetImage('assets/img/2.png'),
            ),
            ElevatedButton.icon(
              label: const Text('Dialog Allert  '),
              icon: const Icon(Icons.info),
              onPressed: () {
                AlertDialog(
                  content: const CircleAvatar(
                    backgroundImage: AssetImage('assets/img/2.png'),
                    child: Text('Gambar Berhasil Ditampilkan'),
                  ),
                  actions: [
                    TextButton(
                      child: const Text('Ok'),
                      onPressed: () {},
                    )
                  ],
                );
              },
            ),
            const Divider(),
            ElevatedButton.icon(
              label: const Text('Bottom Sheet'),
              icon: const Icon(Icons.image_rounded),
              onPressed: () {
                showModal('assets/img/2.png');
              },
            ),
          ],
        ),
        Column(
          children: [
            const Image(
              height: 100,
              width: 100,
              image: AssetImage('assets/img/3.png'),
            ),
            ElevatedButton.icon(
              label: const Text('Dialog Allert  '),
              icon: const Icon(Icons.info),
              onPressed: () {
                AlertDialog(
                  content: const CircleAvatar(
                    backgroundImage: AssetImage('assets/img/3.png'),
                    child: Text('Gambar Berhasil Ditampilkan'),
                  ),
                  actions: [
                    TextButton(
                      child: const Text('Ok'),
                      onPressed: () {},
                    )
                  ],
                );
              },
            ),
            const Divider(),
            ElevatedButton.icon(
              label: const Text('Bottom Sheet'),
              icon: const Icon(Icons.image_rounded),
              onPressed: () {
                showModal('assets/img/3.png');
              },
            ),
          ],
        ),
        Column(
          children: [
            const Image(
              height: 100,
              width: 100,
              image: AssetImage('assets/img/4.png'),
            ),
            ElevatedButton.icon(
              label: const Text('Dialog Allert  '),
              icon: const Icon(Icons.info),
              onPressed: () {
                AlertDialog(
                  content: const CircleAvatar(
                    backgroundImage: AssetImage('assets/img/4.png'),
                    child: Text('Gambar Berhasil Ditampilkan'),
                  ),
                  actions: [
                    TextButton(
                      child: const Text('Ok'),
                      onPressed: () {},
                    )
                  ],
                );
              },
            ),
            const Divider(),
            ElevatedButton.icon(
              label: const Text('Bottom Sheet'),
              icon: const Icon(Icons.image_rounded),
              onPressed: () {
                showModal('assets/img/4.png');
              },
            ),
          ],
        ),
      ],
    );
  }

  void showModal(String i) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(100),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(i),
                  ),
                  const Text('Hasil Gambar')
                ],
              ),
          );
        });
  }
}
