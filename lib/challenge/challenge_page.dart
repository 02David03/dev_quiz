import 'file:///D:/david/Projects/dev_quiz/lib/challenge/widgets/question_indicator/question_indicator.dart';
import 'package:dev_quiz/challenge/widgets/quiz/quiz.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SafeArea(
            top: true,
            child: QuestionIndicator()
        ),
      ),
      body: Quiz(title: 'O que o Flutter faz em sua totalidade?'),
    );
  }
}
