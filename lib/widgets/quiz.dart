import 'package:flutter/material.dart';
import 'package:questionnaire/widgets/homepage.dart';
import 'package:questionnaire/widgets/questionpage.dart';

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

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionPage();
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
