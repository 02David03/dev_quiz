import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class Answers extends StatefulWidget {
  final String content;
  final bool isRight;
  final bool isSelected;
  const Answers({
    Key? key,
    required this.content,
    this.isRight = false,
    this.isSelected = false
  }) : super(key: key);
  @override
  _AnswersState createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  Color get _selectedColorRight =>
      widget.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      widget.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      widget.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      widget.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      widget.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => widget.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: widget.isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(
            color: widget.isSelected ? _selectedBorderCardRight : AppColors.border
          ))
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Text(
                      widget.content,
                      style: widget.isSelected ? _selectedTextStyleRight : AppTextStyles.body
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: widget.isSelected ? _selectedColorRight : AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.fromBorderSide(BorderSide(
                      color: widget.isSelected ? _selectedBorderRight : AppColors.border
                    ))
                  ),
                  child: widget.isSelected?
                  Icon(
                    _selectedIconRight,
                    size: 16,
                    color: AppColors.white
                  ): null
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
