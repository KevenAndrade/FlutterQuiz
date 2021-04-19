import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_gradients.dart';
import 'package:flutterquiz/core/app_text_styles.dart';

class AppBarCustom extends PreferredSize {
  AppBarCustom()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
              height: 250,
              decoration: BoxDecoration(gradient: AppGradients.linear),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(TextSpan(
                        text: "Ola, ",
                        style: AppTextStyles.title,
                        children: [
                          TextSpan(text: "Xibinho", style: AppTextStyles.titleBold)
                        ])),
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/65917547?v=4")
                                )
                              )
                  )
                ]
            ),
              )
          ),
        );
}
