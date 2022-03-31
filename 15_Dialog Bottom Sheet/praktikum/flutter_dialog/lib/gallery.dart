import 'package:flutter/material.dart';

class Galery extends StatefulWidget {
  const Galery({Key? key}) : super(key: key);

  @override
  _GaleryState createState() => _GaleryState();
}

//class private dari galery state
class _GaleryState extends State<Galery> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 50,
      padding: const EdgeInsets.only(top: 20),
      crossAxisCount: 2,
      children: <Widget>[
        //baris 1 gambar
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
               showAlert('assets/img/1.png');
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
        //baris 2 gambar
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
                showAlert('assets/img/2.png');
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
        //baris 3 gambar
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
                showAlert('assets/img/3.png');
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
        //baris 4 gambar
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
                showAlert('assets/img/4.png'); 
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

  //Widget function show alert untuk memanggil si alert
  void showAlert(String i) {
    AlertDialog alert = AlertDialog(
      content: Container(
        width: 100,
        height: 100,
        child: Image.asset(i),
        decoration: const BoxDecoration(shape: BoxShape.circle),
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
  }

  //Widget function show modal untuk memanggil si modal
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
