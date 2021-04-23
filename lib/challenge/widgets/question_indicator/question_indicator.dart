import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuestionIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Questão 04',
                style: AppTextStyles.body),
              Text('de 10',
                style: AppTextStyles.body)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child:
              ProgressIndicatorGreen(value: 4)
          )
        ],
      ),
    );
  }
}
