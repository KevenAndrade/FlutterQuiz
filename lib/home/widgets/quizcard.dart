import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_colors.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:flutterquiz/models/quiz_modal.dart';
import 'package:flutterquiz/shared/progress.dart';

class Quizcart extends StatelessWidget {
  final QuizModal quiz;
  final double percentagen;
  final VoidCallback onTap;
  Quizcart({
    Key? key,
    required this.quiz,
    required this.percentagen,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
            color: AppColors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 40, width: 40, child: Image.asset(quiz.image)),
            SizedBox(height: 20),
            Text(quiz.title, style: AppTextStyles.heading15),
            SizedBox(height: 20),
            Row(children: [
              Expanded(
                  flex: 1,
                  child: Text(
                      "${quiz.questionsAwnsered}/${quiz.question.length}",
                      style: AppTextStyles.body11)),
              Expanded(
                flex: 2,
                child: Progress(value: percentagen),
              )
            ])
          ],
        ),
      ),
    );
  }
}
