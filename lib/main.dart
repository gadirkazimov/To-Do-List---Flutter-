import 'package:figma_project/screens/second_screen.dart';
import 'package:figma_project/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';
import 'screens/third_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma Project',
      home: SecondScreen(),
      routes: {
        '/firstscreen': (context) => const FirstScreen(),
      },
    );
  }
}
