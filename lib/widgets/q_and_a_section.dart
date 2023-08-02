import 'package:flutter/material.dart';

class QuestionAndAnswerSection extends StatelessWidget {
  final List<Map<String, Object>> dataSubmitted;

  const QuestionAndAnswerSection(this.dataSubmitted, {super.key});

  @override
  Widget build(BuildContext context) {
    // set the overall boundaries and insert a scrollable widget
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          // build a comma-separated list from dataSubmitted using toList() and
          // inside one defines Row widgets for each element in the list
          children: dataSubmitted.map(
            (questionMap) {
              return Row(
                // note here to read children of a row in order from left to right
                // compared to Column children, which is top to bottom
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 0,
                    color: (questionMap['user_answer'] ==
                            questionMap['correct_answer']
                        ? Colors.green
                        : Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Center(
                        child: Text(
                          (((questionMap['question_index']) as int) + 1)
                              .toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // Expanded prevents the child Column from taking more space than
                  // its parent Row widget; the main axis of a Row is its width, so
                  // the Column is confined to the same width
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          questionMap['question'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          questionMap['user_answer'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Text(
                          questionMap['correct_answer'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.lightGreen,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
