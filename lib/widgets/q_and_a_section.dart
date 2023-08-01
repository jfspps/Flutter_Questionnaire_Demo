import 'package:flutter/cupertino.dart';

class QuestionAndAnswerSection extends StatelessWidget {
  final List<Map<String, Object>> dataSubmitted;

  const QuestionAndAnswerSection(this.dataSubmitted, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // build a comma-separated list from dataSubmitted using toList() and
      // inside one defines Row widgets for each element in the list
      children: dataSubmitted.map(
        (questionMap) {
          return Row(
            // note here to read in order from left to right
            children: [
              Text(
                // type-cast Object to int and then string
                (((questionMap['question_index']) as int) + 1).toString(),
              ),
              // Expanded prevents the child Column from taking more space than
              // its parent Row widget; the main axis of a Row is its width, so
              // the Column is confined to the same width
              Expanded(
                child: Column(
                  children: [
                    Text(questionMap['question'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(questionMap['user_answer'] as String),
                    Text(questionMap['correct_answer'] as String),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
