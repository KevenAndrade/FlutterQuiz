import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/widgets/awnser.dart';
import 'package:flutterquiz/challenge/widgets/next_Button.dart';
import 'package:flutterquiz/challenge/widgets/question.dart';
import 'package:flutterquiz/challenge/widgets/question_indicator.dart';
import 'package:flutterquiz/models/question_modal.dart';

class ChalengePage extends StatefulWidget {
  final List<QuestionModal> question;
  ChalengePage({Key? key, required this.question});

  @override
  _ChalengePageState createState() => _ChalengePageState();
}

class _ChalengePageState extends State<ChalengePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(88),
        child: SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(),
                QuestionIndicator(),
              ],
            )),
      ),
      body: Column(
        children: [
          Question(question: widget.question[0]),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(child: NextButton.white(label: "Pular", onTap: () {})),
          Expanded(child: NextButton.green(label: "Confirmar", onTap: () {}))
        ]),
      ),
    );
  }
}
