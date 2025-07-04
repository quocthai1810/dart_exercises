import 'package:buoi18_exercises/screen1/screen1.dart';
import 'package:buoi18_exercises/screen2/screen2.dart';
import 'package:buoi18_exercises/screen3/screen3.dart';
import 'package:buoi18_exercises/screen4/screen4.dart';
import 'package:buoi18_exercises/screen5/screen5.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const Screen1(),
      // home: const Screen2(),
      // home: const Screen3(),
      // home: const Screen4(),
      home: const Screen5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
