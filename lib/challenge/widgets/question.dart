import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/widgets/awnser.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:flutterquiz/models/question_modal.dart';

class Question extends StatefulWidget {
  final QuestionModal question;

  const Question({Key? key, required this.question}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int? indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Text(widget.question.title, style: AppTextStyles.heading),
            SizedBox(height: 24),
            for (var i = 0; i < widget.question.awnsers.length; i++)
              Awnser(
                  awnser: widget.question.awnsers[i],
                  isSelected: indexSelected == i,
                  onTap: () {
                    indexSelected = i;
                    setState(() {});
                  }),
          ],
        ));
  }
}

// na undi k sta  for npodia fzeba el assim tmb, kel 3 pntinho eh pa concatena widget na um lista
/* ...widget.question.awnsers
                .map((e) => Awnser(title: e.title, isRight: e.isRight))
                .toList(), */
