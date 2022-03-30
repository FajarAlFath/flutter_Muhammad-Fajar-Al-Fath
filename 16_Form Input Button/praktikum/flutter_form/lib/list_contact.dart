import 'package:flutter/material.dart';
import 'package:flutter_form/add_contact.dart';
import 'list_data.dart';

class Listcontact extends StatelessWidget {
  const Listcontact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Widget'),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        leading: InkWell(
          child: const Icon(Icons.chevron_left),
          onTap: () => {Navigator.pop(context)},
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, i){
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              child: Text(data[i].nama[0],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w300
              ),),
              backgroundColor: Colors.lightGreen,
            ),
            title: Text(data[i].nama,
            style: const TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(data[i].noHp),
          );
        },
        separatorBuilder: (context, i){
          return const Divider();
        },
        itemCount: data.length,
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightGreen,
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => const AddContact()),);
        },
      ),
    );
  }
}
  
