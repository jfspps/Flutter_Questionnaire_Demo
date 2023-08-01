import 'package:flutter/material.dart';
import 'package:questionnaire/widgets/homepage.dart';
import 'package:questionnaire/widgets/questionpage.dart';
import 'package:questionnaire/data/example_questions.dart';
import 'package:questionnaire/widgets/resultspage.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  // this initialises fields in the order given after all other non-null fields
  // have been initialised; this is run only once (unlike build())
  @override
  void initState() {
    activeScreen = HomePage(switchScreen);
    super.initState();
  }

  // can't initialise activeScreen to switchScreen() since the latter would (also)
  // not be known on instantiation so instead we make this nullable
  Widget? activeScreen;

  // allow this less to be reset when all read by user
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    // note that the list "questions" is made accessible through
    // example_questions.dart
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsPage(
          submittedAnswers: selectedAnswers,
        );
      });
    }
  }

  void switchScreen() {
    setState(() {
      // allow QuestionPage to update this class' selectedAnswers list
      activeScreen = QuestionPage(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
          child: activeScreen,
        ),
      ),
    );
  }
}

// alternatively, define a string field under _Quiz and use this to determine
// what to assign to the Container's child widget via a ternary operator
// e.g. someString == 'question-page' ? const QuestionPage() : const HomePage()
// with parameters for the widget constructors as needed
