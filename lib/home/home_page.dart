import 'package:flutter/material.dart';
import 'package:flutterquiz/home/widgets/appbar.dart';
import 'package:flutterquiz/home/widgets/level_button.dart';
import 'package:flutterquiz/home/widgets/quizcard.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCustom(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButton(label: "Fácil"),
                  LevelButton(label: "Médio"),
                  LevelButton(label: "Difícil"),
                  LevelButton(label: "Perito"),
                ],
              ),
              SizedBox(height: 24),
              Expanded(
                  child: GridView.count(
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      crossAxisCount: 2,
                      children: [
                    Quizcart(),
                    Quizcart(),
                    Quizcart(),
                    Quizcart(),
                    Quizcart(),
                    Quizcart()
                  ]))
            ],
          ),
        ));
  }
}
