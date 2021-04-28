import 'package:flutter/foundation.dart';

class ChalengeController {
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentpage => currentPageNotifier.value;
  set currentpage(int value) => currentPageNotifier.value = value;
}
