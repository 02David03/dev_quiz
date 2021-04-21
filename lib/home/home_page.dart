import 'package:dev_quiz/home/widgets/app_bar/home_app_bar.dart';
import 'package:dev_quiz/home/widgets/level_button/level_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LevelButton(
              label: 'Fácil',
            ), LevelButton(
              label: 'Médio',
            ), LevelButton(
              label: 'Difícil',
            ), LevelButton(
              label: 'Perito',
            ),
          ],
        ),
      ),
    );
  }
}
