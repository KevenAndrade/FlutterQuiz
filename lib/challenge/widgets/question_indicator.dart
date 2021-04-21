import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_colors.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:flutterquiz/shared/progress.dart';

class QuestionIndicator extends StatelessWidget {
  const QuestionIndicator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Questao 04", style: AppTextStyles.body),
            Text(
              "de 10",
              style: AppTextStyles.body,
            )
          ]),
          SizedBox(height:16),
          Progress(value:0.4)
        ]));
  }
}
