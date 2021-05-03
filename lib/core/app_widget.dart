//import 'package:flutterquiz/challenge/challenge_page.dart';
import 'package:flutter/material.dart';
import 'package:flutterquiz/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Quiz",
      home: SplashPage(),
    ); 
  }
}
