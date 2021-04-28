import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/challenge_controller.dart';
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
  final controller = ChalengeController();
  final pageController = PageController();

  @override
  void initState() {
    controller.currentPageNotifier.addListener(() {
      setState(() {});
    });
    super.initState();
  }

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
                QuestionIndicator(
                  currentpage: controller.currentpage,
                  length: widget.question.length,
                ),
              ],
            )),
      ),
      body: PageView(
        children: widget.question.map((e) => Question(question: e)).toList(),
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
