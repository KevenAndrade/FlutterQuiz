import 'package:flutter/material.dart';
import 'package:flutterquiz/home/widgets/appbar.dart';
import 'package:flutterquiz/home/widgets/level_button.dart';

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
      body: LevelButton(label:"Perito")
    );
  }
}
