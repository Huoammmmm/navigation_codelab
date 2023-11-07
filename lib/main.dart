import 'package:flutter/material.dart';
import 'package:navigation_codelab/second_screen.dart';
import 'package:navigation_codelab/third_screen.dart';
import 'first_screen.dart';
import 'Generatescreens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Codelab',
      initialRoute: '/',
      routes: {
        '/' : (context) => const FirstScreen(),
        '/SecondScreen': (context) => const SecondScreen(),
        '/ThirdScreen':(context) => const ThirdScreen(),
        '/GenerateScreen' : (context) => GenerateScreen(),
      },
    );
  }
}