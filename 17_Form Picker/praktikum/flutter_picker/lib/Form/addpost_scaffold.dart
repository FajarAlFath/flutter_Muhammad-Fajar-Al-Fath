import 'package:flutter/material.dart';
import 'package:flutter_picker/Form/addform.dart';
import 'package:provider/provider.dart';
import '../provider/provider_data.dart';

class AddpostScaffold extends StatelessWidget {
  const AddpostScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Item>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Form here!'),
      ),
      body: AddForm(onCreate: (item) {
        data.addItem(item);
        Navigator.pop(context);
      }),
    );
  }
}
