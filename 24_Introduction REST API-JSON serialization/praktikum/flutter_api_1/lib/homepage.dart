import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List _get = [];

  @override
  void initState() {
    _getData();
    super.initState();
  }

  Future _getData()async{
    try{
      final response = await http.get(Uri.parse('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts'));
      
      if(response.statusCode == 200){
        final data = jsonDecode(response.body);

        setState(() {
          _get = data[''];
        });
      }


    } catch(e){
      // ignore: avoid_print
      print(e);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List contacts'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i){
            return ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Text(
                  _get[i],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                backgroundColor: Colors.purple,
              ),
              title: Text(
                _get[i],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
          separatorBuilder: (context, i){
            return const Divider();
          },
          itemCount: _get.length),
    );
  }
}