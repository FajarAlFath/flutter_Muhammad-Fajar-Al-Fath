import 'package:flutter/material.dart';

class Galery extends StatefulWidget {
  const Galery({Key? key}) : super(key: key);

  @override
  _GaleryState createState() => _GaleryState();
}

void _showModal() {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (context) => Container(
      child: cir,
    ),
  );
}

class _GaleryState extends State<Galery> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 20,
      padding: const EdgeInsets.only(top: 50),
      crossAxisCount: 2,
      children: <Widget>[
        Column(
          children: [
            const Image(
              height: 20,
              width: 20,
              image: AssetImage(''),
            ),
            ElevatedButton.icon(
              label: const Text('Dialog Allert'),
              icon: const Icon(Icons.info),
              onPressed: () {
                AlertDialog(
                  content: const CircleAvatar(
                    backgroundImage: AssetImage(''),
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
            ElevatedButton.icon(
              label: const Text('Bottom Sheet'),
              icon: const Icon(Icons.image_rounded),
              onPressed: () {},
            ),
          ],
        ),
        Column(
          children: [
            const Image(
              height: 20,
              width: 20,
              image: AssetImage(''),
            ),
            ElevatedButton.icon(
              label: const Text('Dialog Allert'),
              icon: const Icon(Icons.info),
              onPressed: () {
                AlertDialog(
                  content: const CircleAvatar(
                    backgroundImage: AssetImage(''),
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
          ],
        ),
        Column(
          children: [
            const Image(
              height: 20,
              width: 20,
              image: AssetImage(''),
            ),
            ElevatedButton.icon(
              label: const Text('Dialog Allert'),
              icon: const Icon(Icons.info),
              onPressed: () {
                AlertDialog(
                  content: const CircleAvatar(
                    backgroundImage: AssetImage(''),
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
          ],
        ),
        Column(
          children: [
            const Image(
              height: 20,
              width: 20,
              image: AssetImage(''),
            ),
            ElevatedButton.icon(
              label: const Text('Dialog Allert'),
              icon: const Icon(Icons.info),
              onPressed: () {
                AlertDialog(
                  content: const CircleAvatar(
                    backgroundImage: AssetImage(''),
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
          ],
        ),
      ],
    );
  }
}
