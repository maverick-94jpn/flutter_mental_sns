import 'package:flutter/material.dart';
import 'package:new_mentalhealthapp/styles.dart';
import 'package:new_mentalhealthapp/uis/intro_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Styles.mainBlue),
      home: IntroScreen(),
    );
  }
}
