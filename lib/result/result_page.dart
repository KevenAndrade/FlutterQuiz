import 'package:flutter/material.dart';
import 'package:flutterquiz/challenge/widgets/next_Button.dart';
import 'package:flutterquiz/core/app_images.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:share_plus/share_plus.dart';

class Result extends StatelessWidget {
  final String title;
  final int length;
  final int rightAnswer;

  const Result(
      {Key? key,
      required this.title,
      required this.length,
      required this.rightAnswer})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.trophy),
          Column(
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
                          text: "\n $title", style: AppTextStyles.bodyBold),
                      TextSpan(
                          text: "\n com $rightAnswer de $length acertos.",
                          style: AppTextStyles.body),
                    ]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: NextButton.purple(
                      label: "Compartilhar",
                      onTap: () {
                        Share.share("Flutter Dev - Desenvolvido por Keven Andrade no NLW5 - Visite meu Git em https://github.com/KevenAndrade");
                      }),
                )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: NextButton.white(
                      label: "Voltar ao inicio",
                      onTap: () {
                        Navigator.pop(context);
                      }),
                )),
              ],
            )
          ]),
        ],
      ), //
    ));
  }
}
