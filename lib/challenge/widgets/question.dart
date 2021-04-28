import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/widgets/awnser.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:flutterquiz/models/question_modal.dart';

class Question extends StatelessWidget {
  final QuestionModal question;

  const Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Text(question.title, style: AppTextStyles.heading),
            SizedBox(height: 24),
            ...question.awnsers
                .map((e) => Awnser(title: e.title, isRight: e.isRight))
                .toList(),
          ],
        ));
  }
}
