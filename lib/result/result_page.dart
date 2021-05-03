import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_text_styles.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Parabens", style: AppTextStyles.heading40),
          ],
    ));
  }
}
