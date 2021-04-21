import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_colors.dart';

class Progress extends StatelessWidget {
  final double value;
  const Progress({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
        value: value,
        backgroundColor: AppColors.chartSecondary,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary));
  }
}
