import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_gradients.dart';
import 'package:flutterquiz/core/app_images.dart';
import 'package:flutterquiz/home/home_page.dart';

class SplashPage extends StatelessWidget {
  SplashPage() {}

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home())));

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Center(child: Image.asset(AppImages.logo))));
  }
}
