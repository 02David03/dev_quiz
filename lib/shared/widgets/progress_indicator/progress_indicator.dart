import 'package:flutter/material.dart';
import 'package:dev_quiz/core/core.dart';

class ProgressIndicatorGreen extends StatelessWidget {
  final double value;
  const ProgressIndicatorGreen({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value/10,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation(AppColors.chartPrimary),
    );
  }
}
