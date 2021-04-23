import 'package:dev_quiz/home/widgets/app_bar/home_app_bar.dart';
import 'package:dev_quiz/home/widgets/level_button/level_button.dart';
import 'package:dev_quiz/home/widgets/quiz_card/quiz_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
        child: Column(
          children: [
            Row(
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
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: StaggeredGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children:[
                  QuizCard(label: 'Estado'),
                  QuizCard(label: 'Interface',),
                  QuizCard(label: 'Integração',),
                  QuizCard(label: 'Widgets',)
                ],
                staggeredTiles: [
                  StaggeredTile.fit(1),
                  StaggeredTile.fit(1),
                  StaggeredTile.fit(1),
                  StaggeredTile.fit(1),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
