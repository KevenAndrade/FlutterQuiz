import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/widgets/next_Button.dart';
import 'package:flutterquiz/core/app_text_styles.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Parabéns !", style: AppTextStyles.heading40),
          SizedBox(
            height: 16,
          ),
          Text.rich(
            TextSpan(
                text: "Voce concluiu o ",
                style: AppTextStyles.body,
                children: [
                  TextSpan(
                      text: "\n Gerenciamento de estados",
                      style: AppTextStyles.bodyBold),
                  TextSpan(
                      text: "\n com 6 de 10 acertos.",
                      style: AppTextStyles.body),
                ]),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68),
                child: NextButton.purple(label: "Continuar", onTap: () {}),
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68),
                child:
                    NextButton.white(label: "Voltar ao inicio", onTap: () {}),
              )),
            ],
          )
        ],
      ), //
    ));
  }
}
