import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_colors.dart';
import 'package:flutterquiz/core/app_images.dart';
import 'package:flutterquiz/core/app_text_styles.dart';

class Quizcart extends StatelessWidget {
  Quizcart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container( height: 40, width: 40, child: Image.asset(AppImages.data)),
          SizedBox(height:20),
          Text("Gerenciamento de Estado", style: AppTextStyles.heading15),
          SizedBox(height:20),
          Row(children: [
            Expanded( flex:1, child: Text("4/10", style: AppTextStyles.body11)),
            Expanded(
              flex: 2,
              child: LinearProgressIndicator(
              value: 0.4,
              backgroundColor: AppColors.chartSecondary,
              valueColor:
                  AlwaysStoppedAnimation<Color>(AppColors.chartPrimary)),
            )
          ])
        ],
      ),
    );
  }
}
