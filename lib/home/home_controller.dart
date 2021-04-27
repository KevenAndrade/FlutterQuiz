import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/widgets/awnser.dart';
import 'package:flutterquiz/core/app_images.dart';
import 'package:flutterquiz/home/home_repository.dart';
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

  final repository = HomeRepository();

  void getUsers() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.sucess;
  }

  void getQuizes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}
