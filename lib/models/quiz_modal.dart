import 'package:flutterquiz/models/question_modal.dart';

enum Level {facil, medio, dificil, perito}

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
}
