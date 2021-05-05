import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/challenge_page.dart';
import 'package:flutterquiz/core/app_colors.dart';
import 'package:flutterquiz/home/home_controller.dart';
import 'package:flutterquiz/home/home_state.dart';
import 'package:flutterquiz/home/widgets/appbar.dart';
import 'package:flutterquiz/home/widgets/level_button.dart';
import 'package:flutterquiz/home/widgets/quizcard.dart';
//import 'package:flutterquiz/models/user_modal.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUsers();
    controller.getQuizes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.sucess) {
      return Scaffold(
          appBar: AppBarCustom(user: controller.user!),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LevelButton(label: "Fácil"),
                    LevelButton(label: "Médio"),
                    LevelButton(label: "Difícil"),
                    LevelButton(label: "Perito"),
                  ],
                ),
                SizedBox(height: 24),
                Expanded(
                    child: GridView.count(
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        crossAxisCount: 2,
                        children: controller.quizes!
                            .map(
                              (e) => Quizcart(
                                  quiz: e,
                                  percentagen:
                                      e.questionsAwnsered / e.question.length,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ChalengePage(
                                                  question: e.question,
                                                  title: e.title,
                                                )));
                                  }),
                            )
                            .toList()))
              ],
            ),
          ));
    } else {
      return Scaffold(
          body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
        ),
      ));
    }
  }
}
