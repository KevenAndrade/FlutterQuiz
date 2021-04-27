import 'dart:convert';

import 'package:flutterquiz/models/question_modal.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get levelparce => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito
      }[this]!;
}

extension levelExt on Level {
  String get parce => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito"
      }[this]!;
}

class QuizModal {
  final String title;
  final List<QuestionModal> question;
  final int questionsAwnsered;
  final String image;
  final Level level;

  QuizModal({
    required this.level,
    this.questionsAwnsered = 0,
    required this.image,
    required this.title,
    required this.question,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'question': question.map((x) => x.toMap()).toList(),
      'questionsAwnsered': questionsAwnsered,
      'image': image,
      'level': level.parce,
    };
  }

  factory QuizModal.fromMap(Map<String, dynamic> map) {
    return QuizModal(
      title: map['title'],
      question: List<QuestionModal>.from(
          map['question']?.map((x) => QuestionModal.fromMap(x))),
      questionsAwnsered: map['questionsAwnsered'],
      image: map['image'],
      level: map['level'].toString().levelparce,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModal.fromJson(String source) =>
      QuizModal.fromMap(json.decode(source));
}
