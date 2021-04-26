class UserModal {
  final String name;
  final String photoUrl;
  final int score;

  UserModal({
    required this.name,
    required this.photoUrl,
    this.score = 0,
  });
}
