import 'package:flutter/material.dart';
import 'package:kitabisakoding/screen/homeScreen.dart';
import 'package:splashscreen/splashscreen.dart';

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
      home: SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: HomeScreen(),
      backgroundColor: Colors.mainColor,
      image: Image.asset(
        'images/kitaBisaKoding.png',
      ),
      photoSize: 80.0,
    );
  }
}
