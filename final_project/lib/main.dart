import 'package:flutter/material.dart';
import 'package:final_project/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Up and Go!',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen,
        accentColor: Colors.black87,
      ),
      home: MainScreen(),
    );
  }
}
