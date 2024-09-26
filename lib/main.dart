import 'package:flutter/material.dart';
import 'package:flutter_exam/Design3.dart';
import 'package:flutter_exam/page.dart';
import 'package:flutter_exam/secondDesign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DesignExample(),
    );
  }
}
     