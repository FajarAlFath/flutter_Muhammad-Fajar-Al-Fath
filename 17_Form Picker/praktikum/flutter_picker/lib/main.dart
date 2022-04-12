import 'package:flutter/material.dart';
import 'package:flutter_picker/Form/addpost_scaffold.dart';
import 'package:flutter_picker/provider/provider_data.dart';
import 'package:flutter_picker/result/show.dart';
import 'Form/homepage.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Item(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Form picker',
        routes: {
          '/': (context) => const Homepage(),
          '/add': (context) => const AddpostScaffold(),
          '/result': (context) => const Result(),
        },
      ),
    );
  }
}
