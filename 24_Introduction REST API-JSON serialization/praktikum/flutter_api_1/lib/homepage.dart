import 'package:flutter/material.dart';
import 'view_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List dataUser = [];
  void getDatauser() {
    UserViewModel().getUsers().then((value) {
      setState(() {
        dataUser = value;
      });
    });
  }

  @override
  void initState() {
    getDatauser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
      ),
      // ignore: unnecessary_null_comparison
      body: dataUser == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: dataUser.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    child: Text(
                      dataUser[i].name[0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    backgroundColor: Colors.purple,
                  ),
                  title: Text(dataUser[i].name),
                  subtitle: Text(dataUser[i].phone),
                );
              },
            ),
    );
  }
}
