import 'package:flutterquiz/challenge/widgets/awnser.dart';
import 'package:flutterquiz/core/app_images.dart';
import 'package:flutterquiz/home/home_state.dart';
import 'package:flutterquiz/models/awnser_modal.dart';
import 'package:flutterquiz/models/question_modal.dart';
import 'package:flutterquiz/models/quiz_modal.dart';
import 'package:flutterquiz/models/user_modal.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModal? user;
  List<QuizModal>? quizes;

  void getUsers() {
    user = UserModal(
      name: "Keven Xibo",
      photoUrl: "https://avatars.githubusercontent.com/u/65917547?v=4",
    );
  }

  void getQuizes() {
    quizes = [
      QuizModal(
        title: "Gerenciamento de estado",
        image: AppImages.data,
        level: Level.facil,
        question: [
          QuestionModal(title: "Esta gostando a NLW5 ?", awnsers: [
            AwnserModel(title: "Estou sim!"),
            AwnserModel(title: "Estou mas formador muito lento"),
            AwnserModel(title: "Nao estou!"),
            AwnserModel(title: "Mais ou menos"),
          ])
        ])
    ];
  }
}
