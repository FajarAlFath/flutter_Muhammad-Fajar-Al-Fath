import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode demo simple'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
         Container( 
           padding: const EdgeInsets.all(100),
           child: BarcodeWidget(
            height: 100,
            width: 100,
            data: 'Alterra Academy',
            barcode: Barcode.code128(escapes: true),
            errorBuilder: (context, error) => Center(child: Text(error)),
          ),),
          Container( 
           padding: const EdgeInsets.all(100),
           child: BarcodeWidget(
            height: 100,
            width: 100,
            data: 'Flutter Asyik',
            barcode: Barcode.code128(escapes: true),
            errorBuilder: (context, error) => Center(child: Text(error)),
          ),),
          Container( 
           padding: const EdgeInsets.all(100),
           child: BarcodeWidget(
            height: 100,
            width: 100,
            data: 'Muhammad Fajar Al Fath',
            barcode: Barcode.code128(escapes: true),
            errorBuilder: (context, error) => Center(child: Text(error)),
          ),),
        ],
      ),
    );
  }
}
