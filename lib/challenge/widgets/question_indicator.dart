import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:flutterquiz/shared/progress.dart';

class QuestionIndicator extends StatelessWidget {
  final int currentpage;
  final int length;

  const QuestionIndicator(
      {Key? key, required this.currentpage, required this.length})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Questao $currentpage", style: AppTextStyles.body),
            Text(
              "de $length",
              style: AppTextStyles.body,
            )
          ]),
          SizedBox(height: 16),
          Progress(value: currentpage/length),
        ]));
  }
}
