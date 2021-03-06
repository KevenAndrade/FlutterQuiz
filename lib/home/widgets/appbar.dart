import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_gradients.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:flutterquiz/home/widgets/score_card.dart';
import 'package:flutterquiz/models/user_modal.dart';

class AppBarCustom extends PreferredSize {
  final UserModal user;

  AppBarCustom({required this.user})
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
                                    text: user.name,
                                    style: AppTextStyles.titleBold)
                              ])),
                          Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(user.photoUrl))))
                        ]),
                  ),
                  Align(alignment: Alignment(0.0, 1.0), child: ScoreCard(porcentagen: user.score/100,))
                ],
              )),
        );
}
