import 'package:flutter/material.dart';
import 'package:questionnaire/data/example_questions.dart';
import 'package:questionnaire/widgets/q_and_a_section.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.submittedAnswers,
    required this.restart,
  });

  final List<String> submittedAnswers;
  final void Function() restart;

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
    final summaryList = getSummaryList();
    final numberOfQuestionsAsked = questions.length;

    // similar to Java's stream().filter().toList().size();
    final correctAnswers = summaryList.where((response) {
      return response['correct_answer'] == response['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctAnswers out of $numberOfQuestionsAsked questions correctly",
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionAndAnswerSection(summaryList),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restart,
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Restart quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
