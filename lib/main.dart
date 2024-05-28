import 'package:flutter/material.dart';
import 'package:task11/pages/my_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red, // Change to your desired color
        ),
      ),
      home: HomePage(),
    );
  }
}
