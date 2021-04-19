import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_gradients.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:flutterquiz/home/widgets/score_card.dart';

class AppBarCustom extends PreferredSize {
  AppBarCustom()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    height: 161,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(
                              text: "Ola, ",
                              style: AppTextStyles.title,
                              children: [
                                TextSpan(
                                    text: "Xibinho",
                                    style: AppTextStyles.titleBold)
                              ])),
                          Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://avatars.githubusercontent.com/u/65917547?v=4"))))
                        ]),
                  ),
                  Align(alignment: Alignment(0.0, 1.0), child: ScoreCard())
                ],
              )),
        );
}
