import 'package:flutter_animation1/screen/homepage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main(){
  testWidgets('Homepagetest', (WidgetTester tester)async{
    await tester.pumpWidget(const MaterialApp(
      home: Homepage(),
    ));

    expect(find.text('Animation'), findsOneWidget);
  });
}