import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutterquiz/models/quiz_modal.dart';
import 'package:flutterquiz/models/user_modal.dart';

class HomeRepository {
  Future<UserModal> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModal.fromJson(response);
    //print(user.photoUrl);
    return user;
  }

  Future<List<QuizModal>> getQuizzes() async {
    final response = await rootBundle.loadString("assets/database/quizes.json");
    final list = jsonDecode(response) as List;
    final quizzes = list.map((e) => QuizModal.fromMap(e)).toList();
    return quizzes;
  }
}
