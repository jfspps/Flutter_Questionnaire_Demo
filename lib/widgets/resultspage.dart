import 'package:flutter/material.dart';
import 'package:questionnaire/data/example_questions.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.submittedAnswers});

  final List<String> submittedAnswers;

  List<Map<String, Object>> getSummaryList() {
    List<Map<String, Object>> submittedList = [];

    // element based for-loop also possible with Dart
    for (var i = 0; i < submittedAnswers.length; i++) {
      submittedList.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': submittedAnswers[i]
      });
    }

    return submittedList;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You answered X out of Y questions correctly"),
            const SizedBox(
              height: 30,
            ),
            const Text("List of answers to questions..."),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart the quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
