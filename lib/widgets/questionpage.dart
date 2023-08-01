import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:questionnaire/data/example_questions.dart';
import 'package:questionnaire/widgets/answer_button.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionPage();
  }
}

class _QuestionPage extends State<QuestionPage> {
  // now select each question
  var currentQuestionIndex = 0;

  void onAnswer() {
    if (currentQuestionIndex + 1 < questions.length) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

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
              currentQuestion.text,
              // import Google fonts package and apply here (see README.md)
              style: GoogleFonts.lato(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
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
            ...currentQuestion.getShuffledAnswerList().map((answer) {
              return AnswerButton(
                buttonText: answer,
                onPress: onAnswer,
              );
            }),
          ],
        ),
      ),
    );
  }
}
