import 'package:flutter/material.dart';
import 'package:project_cs310/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IWasHere!',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
