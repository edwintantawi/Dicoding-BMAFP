import 'package:flutter/material.dart';
import 'package:kitabisakoding/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KitaBisaKoding",
      theme: ThemeData(
        primarySwatch: Colors.mainColor,
        fontFamily: 'QuickSand',
      ),
      home: HomeScreen(),
    );
  }
}
