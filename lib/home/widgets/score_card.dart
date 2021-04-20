import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_text_styles.dart';
import 'package:flutterquiz/home/widgets/chart.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
          height: 136,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Chart(),
              )),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Vamos Começar", style: AppTextStyles.heading),
                        Text("Complete os desafios e avance em conhecimento",
                            style: AppTextStyles.body)
                      ]),
                ),
              )
            ],
          )),
    );
  }
}
