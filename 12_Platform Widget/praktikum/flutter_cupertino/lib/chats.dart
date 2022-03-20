import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class Chats extends StatelessWidget{
  const Chats({Key? key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context){
    return ListView.separated(
      itemBuilder: (context, index) {
        return CupertinoListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(items[index].url),
          ),
          title: Text(
            items[index].nama,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(items[index].pesan),
          trailing: Text(items[index].waktu),
        );
      },
      separatorBuilder: (context, index){
        return const Divider();
      },
      itemCount: items.length,
    );
  }
}