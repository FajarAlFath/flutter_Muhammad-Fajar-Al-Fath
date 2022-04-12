import 'package:flutter/material.dart';
import 'package:flutter_picker/provider/provider_data.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final id = route['id'];
    final data = Provider.of<Item>(context)
        .item
        .firstWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your data'),
        backgroundColor: data.color,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.50,
            child: Image.file(
              data.cover,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.date,
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  data.caption,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: data.color,
                  ),
                  subtitle: const Text('Warna diatas adalah yang dipilih'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
