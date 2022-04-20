import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/screen/onboard/onboarding.dart';
import 'screen/contact/contact_view_model.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ContactViewModel(),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}