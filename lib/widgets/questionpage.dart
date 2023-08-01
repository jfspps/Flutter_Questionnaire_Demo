import 'package:flutter/material.dart';
import 'package:questionnaire/data/example_questions.dart';
import 'package:questionnaire/models/question_entity.dart';
import 'package:questionnaire/widgets/answer_button.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionPage();
  }
}

class _QuestionPage extends State<QuestionPage> {
  // at the moment, we build only one question page based on the first element
  final QuizQuestion quizQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    // build a SizedBox of maximum width and then centre column child widgets
    // along the column's main axis
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // this would be the horizontal axis for a Column widget
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quizQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // spread (with the spread operator ...) all answers dynamically to
            // build matching (comma-separated) list of AnswerButton widgets;
            // map() appears to be roughly equivalent to Java's stream() and is
            // an idempotent method
            ...quizQuestion.getShuffledAnswerList().map((answer) {
              return AnswerButton(
                buttonText: answer,
                onPress: () {},
              );
            }),
          ],
        ),
      ),
    );
  }
}
