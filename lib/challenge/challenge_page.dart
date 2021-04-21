import 'package:flutter/material.dart';
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
          preferredSize:Size.fromHeight(60),
          child: SafeArea(top:true, child: QuestionIndicator()),
        )
    );
  }
}
