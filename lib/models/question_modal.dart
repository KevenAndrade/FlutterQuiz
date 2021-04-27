import 'dart:convert';

import 'awnser_modal.dart';

class QuestionModal {
  final String title;
  final List<AwnserModel> awnsers;

  QuestionModal({
    required this.title,
    required this.awnsers,
  }) : assert(awnsers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awnsers': awnsers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModal.fromMap(Map<String, dynamic> map) {
    return QuestionModal(
      title: map['title'],
      awnsers: List<AwnserModel>.from(
          map['awnsers']?.map((x) => AwnserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModal.fromJson(String source) =>
      QuestionModal.fromMap(json.decode(source));
}
