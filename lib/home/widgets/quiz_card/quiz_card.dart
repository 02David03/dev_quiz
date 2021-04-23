import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  final String label;
  QuizCard({Key? key, required this.label})
      :assert(['Estado','Interface','Integração','Widgets'].contains(label)),
        super(key: key);

  final config = {
    'Estado' : {
      "image": AppImages.data,
      "text" : 'Gerenciamento de Estado',
      "concluidos" : 3
    },
    'Interface' : {
      "image": AppImages.laptop,
      "text" : 'Construindo Interfaces',
      "concluidos" : 10
    },
    'Integração' : {
      "image": AppImages.hierarchy,
      "text" : 'Integração Nativa',
      "concluidos" : 9
    },
    'Widgets' : {
      "image": AppImages.blocks,
      "text" : 'Integração Nativa',
      "concluidos" : 5
    }
  };

  dynamic get image => config[label]!['image'];
  dynamic get text => config[label]!['text'];
  dynamic get concluido => config[label]!['concluidos'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border:Border.fromBorderSide(BorderSide(
            color: AppColors.border,
          )) ,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 40,
                width: 40,
                child:
                Image(image: AssetImage(image))
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Text(text, style: AppTextStyles.heading15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child:
                      Text('$concluido de 10', style: AppTextStyles.body11)),
                  Expanded(
                    flex: 2,
                    child: ProgressIndicatorGreen(
                      value : concluido
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
