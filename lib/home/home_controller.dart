import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/widgets/awnser.dart';
import 'package:flutterquiz/core/app_images.dart';
import 'package:flutterquiz/home/home_state.dart';
import 'package:flutterquiz/models/awnser_modal.dart';
import 'package:flutterquiz/models/question_modal.dart';
import 'package:flutterquiz/models/quiz_modal.dart';
import 'package:flutterquiz/models/user_modal.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModal? user;
  List<QuizModal>? quizes;

  void getUsers() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModal(
      name: "Keven Xibo",
      photoUrl: "https://avatars.githubusercontent.com/u/65917547?v=4",
    );
    state = HomeState.sucess;
  }

  void getQuizes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizes = [
      QuizModal(
          title: "Gerenciamento de estados",
          image: AppImages.data,
          questionsAwnsered: 1,
          level: Level.facil,
          question: [
            QuestionModal(title: "Esta gostando a NLW5 ?", awnsers: [
              AwnserModel(title: "Estou sim!"),
              AwnserModel(title: "Estou mas formador muito lento"),
              AwnserModel(title: "Nao estou!"),
              AwnserModel(title: "Mais ou menos"),
            ]),
            QuestionModal(title: "Esta aprendendo flutter ?", awnsers: [
              AwnserModel(title: "Estou sim!"),
              AwnserModel(title: "Estou mas formador muito lento"),
              AwnserModel(title: "Nao estou!"),
              AwnserModel(title: "Mais ou menos"),
            ])
          ])
    ];
    state = HomeState.sucess;
  }
}
