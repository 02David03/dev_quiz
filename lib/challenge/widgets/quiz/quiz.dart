import 'package:dev_quiz/challenge/widgets/answers/answers.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
class Quiz extends StatelessWidget {
  final String title;

  const Quiz({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Container(
        child: Column(
          children: [
            Text(title,
            style: AppTextStyles.heading
            ),
            SizedBox(
              height: 24,
            ),
            Answers(content: 'Kit de desenvolvimento de interface de usuário'),
            Answers(content: 'Kit de desenvolvimento de interface de usuário',isRight: true,isSelected: true),
            Answers(content: 'Kit de desenvolvimento de interface de usuário',isRight: false,isSelected: true),
            Answers(content: 'Kit de desenvolvimento de interface de usuário')
          ],
        ),
      ),
    );
  }
}
