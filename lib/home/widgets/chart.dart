import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_colors.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      width:80,
      child: Stack(
        children: [
          Container(
            height:80,
            width:80,
            child: CircularProgressIndicator(
              strokeWidth: 10,
              value: .75,
              backgroundColor: AppColors.chartSecondary
            )
          )
        ],
      )
    );
  }
}