import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/app_bar/score_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends PreferredSize  {
  HomeAppBar() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                gradient: AppGradients.linear
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                      TextSpan(
                          text:'Olá',
                          style: AppTextStyles.title,
                          children:[
                            TextSpan(
                              text: ' David',
                              style: AppTextStyles.titleBold
                            )
                          ]
                      )
                  ),
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/47742784?v=4'
                        )
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment(0,1),
              child: ScoreCard())
        ],
      ),
    )
  );

}
