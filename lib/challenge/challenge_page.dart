import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/widgets/awnser.dart';
import 'package:flutterquiz/challenge/widgets/question.dart';
import 'package:flutterquiz/challenge/widgets/question_indicator.dart';

class ChalengePage extends StatefulWidget {
  @override
  _ChalengePageState createState() => _ChalengePageState();
}

class _ChalengePageState extends State<ChalengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(top: true, child: QuestionIndicator()),
        ),
        body: Column(
          children: [
            Question(question: "Pa kz k ta sirve flutter?"),
            Awnser(title: "Flutter", isRight: true, isSelected: true),
            Awnser(title: "Flutter", isRight: false, isSelected: true),
            Awnser(title: "Flutter", isRight: true, isSelected: false),
            Awnser(title: "Flutter"),
            Awnser(title: "Flutter"),
            Awnser(title: "Flutter"),
          ],
        ));
  }
}
