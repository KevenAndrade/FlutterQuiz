import 'awnser_modal.dart';

class QuestionModal {
  final String title;
  final List<AwnserModel> awnsers;

  QuestionModal({
    required this.title,
    required this.awnsers,
  }) : assert(awnsers.length == 4);
}
