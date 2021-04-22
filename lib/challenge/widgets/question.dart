import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_text_styles.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal:20, vertical: 40),
      child: Column(
        children: [
          Text(question, style: AppTextStyles.heading),
          SizedBox(height:24),
        ],
      )
    );
  }
}